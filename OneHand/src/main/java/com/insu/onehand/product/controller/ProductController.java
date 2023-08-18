package com.insu.onehand.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ProductController {
	
	//private final ProductService productService;
	
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

}
