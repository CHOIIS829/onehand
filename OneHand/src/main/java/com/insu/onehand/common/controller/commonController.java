package com.insu.onehand.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class commonController {
	@GetMapping("main")
	public String home() {
		return "main";
	}
	
}
