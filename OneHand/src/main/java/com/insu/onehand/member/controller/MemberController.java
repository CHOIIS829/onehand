package com.insu.onehand.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.insu.onehand.member.service.MemberService;
import com.insu.onehand.member.vo.Member;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MemberController {

	private final MemberService memberService;
	private final BCryptPasswordEncoder encoder;
	
	// 로그인폼으로 이동
	@GetMapping("loginForm.me")
	public String loginForm() {
		return "member/loginForm";
	}
	// 회원가입폼으로 이동
	@GetMapping("enrollForm.me")
	public String enrollForm() {
		return "member/enrollForm";
	}
	// 회원가입
	@PostMapping("insert.me")
	public String insertMember(Member m, Model model, HttpSession session) {
		
		System.out.println(m);
		
		String encPwd = encoder.encode(m.getMemberPwd());
		m.setMemberPwd(encPwd);
		
		int result = memberService.insertMember(m);
		
		System.out.println(result);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "회원가입을 축하합니다.");
			return "redirect:/main";
		}else {
			session.setAttribute("alertMsg", "회원가입을 실패했습니다.");
			return "redirect:/enrollForm.me";
		}
	}
	
}
