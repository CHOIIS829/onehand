package com.insu.onehand.product.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.insu.onehand.common.template.ChangeFileName;
import com.insu.onehand.product.service.ProductService;
import com.insu.onehand.product.vo.Product;
import com.insu.onehand.product.vo.ProductAtta;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ProductController {
	
	private final ProductService productService;
	
	// 상품리스트
	@GetMapping("list.pro")
	public String selectList() {
		
		return "product/productList";
	}
	
	// 상품상세보기
	@GetMapping("detail.pro")
	public String selectDetail() {
		
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
			return "redirect:/list.pro";
		}else {
			session.setAttribute("alertMsg", "상품등록에 실패했습니다.");
			return "redirect:/insertForm.pro";
		}
	}

}
