package com.insu.onehand.product.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.insu.onehand.common.template.ChangeFileName;
import com.insu.onehand.common.template.Pagination;
import com.insu.onehand.common.vo.PageInfo;
import com.insu.onehand.product.service.ProductService;
import com.insu.onehand.product.vo.Product;
import com.insu.onehand.product.vo.ProductAtta;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ProductController {
	
	private final ProductService productService;
	
	// 상품리스트로 이동
	@GetMapping("productList")
	public String productList() {
		return "product/productList";
	}
	
	// 상품리스트
	@ResponseBody
	@GetMapping(value="list.pro",  produces="application/json; charset=UTF-8")
	public String ajaxSelectList(@RequestParam(value="areaId", defaultValue="0") int areaId, 
							@RequestParam(value="categoryNo", defaultValue="0")int categoryNo,
							@RequestParam(value="sortOption", defaultValue="latest") String sortOption,
							@RequestParam(value="cPage", defaultValue="1") int currentPage,
							@RequestParam(value="keyword", defaultValue="none") String keyword) {
		
		//페이징
		int listCount = productService.selectListCount();
		int pageLimit = 10;
		int boardLimit = 16;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Product> list = productService.selectList(areaId, categoryNo, sortOption, keyword, pi);
		
		Map<String, Object> dataMap = new HashMap<>();
		dataMap.put("list", list);
		dataMap.put("pi", pi);
		
		String jsonData = new Gson().toJson(dataMap);
		
		return jsonData;
	}
	
	// 상품상세보기
	@GetMapping("detail.pro")
	public String selectDetail(int productNo, Model model) {
		
		int result = productService.updateCount(productNo);
		
		Product p = productService.selectProduct(productNo);
		ArrayList<ProductAtta> list = productService.selectAtta(productNo);
		
		model.addAttribute("p", p).addAttribute("list", list);
		
		return "product/productDetail";
	}
	
	// 상품등록폼 이동
	@GetMapping("insertForm.pro")
	public String insertForm() {
		return "product/insertForm";
	}
	
	// 상품 등록
	@PostMapping("insert.pro")
	public String insertProduct(Product p, String memberId, ArrayList<MultipartFile> upFiles, HttpSession session) {
		
		ArrayList<ProductAtta> list = new ArrayList<>();
		
		for(int i = 0; i < upFiles.size(); i++) {
			MultipartFile file = upFiles.get(i);
			
			if(!file.isEmpty()) {
				String changeName = ChangeFileName.saveFile(file, session);
				
				ProductAtta at = new ProductAtta();
				at.setChangeName(changeName);
				at.setFileLevel(i);
				
				list.add(at);
			}
		}
		
		int result = productService.inserProduct(p, list);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "상품을 등록했습니다.");
			return "redirect:/productList";
		}else {
			session.setAttribute("alertMsg", "상품등록에 실패했습니다.");
			return "redirect:/insertForm.pro";
		}
	}

}
