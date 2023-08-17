package com.insu.onehand.member.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String insertMember(Member m, HttpSession session) {
		
		String encPwd = encoder.encode(m.getMemberPwd());
		m.setMemberPwd(encPwd);
		
		int result = memberService.insertMember(m);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "회원가입을 축하합니다.");
			return "redirect:/main";
		}else {
			session.setAttribute("alertMsg", "회원가입을 실패했습니다.");
			return "redirect:/enrollForm.me";
		}
	}
	
	// 아이디 중복체크
	@ResponseBody
	@GetMapping(value="checkId", produces="text/html; charset=UTF-8")
	public String checkId(String memberId) {
		
		int result = memberService.checkId(memberId);
		
		return (result > 0) ? "false" : "true";
	}
	
	// 로그인
	@PostMapping("login.me")
	public String memberLogin(Member m, String saveId, HttpSession session, HttpServletResponse response) {
		// 쿠키 저장 및 초기화
		if(saveId != null && saveId.equals("y")) {
			Cookie cookie = new Cookie("saveId", m.getMemberId());
			cookie.setMaxAge(24 * 60 * 60 * 1);
			
			response.addCookie(cookie);
		}else {
			Cookie cookie = new Cookie("saveId", m.getMemberId());
			cookie.setMaxAge(0);
			
			response.addCookie(cookie);
		}
		
		// member정보 조회
		Member loginUser = memberService.memberLogin(m);
		
		// 비밀번호 일치확인 후  return
		if(loginUser != null && encoder.matches(m.getMemberPwd(), loginUser.getMemberPwd())) {
			session.setAttribute("loginUser", loginUser);
			session.setAttribute("alertMsg", "환영합니다.");
			
			return "redirect:/main";
		}else {
			session.setAttribute("alertMsg", "아이디 혹은 비밀번호를 다시 확인해주세요");
			
			return "redirect:/loginForm.me";
		}
	}
	
	// 로그아웃
	@GetMapping("memberLogout")
	public String memberLogout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/main";
	}
	
}
