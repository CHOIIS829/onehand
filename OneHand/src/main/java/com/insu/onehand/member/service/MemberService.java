package com.insu.onehand.member.service;

import com.insu.onehand.member.vo.Member;

public interface MemberService {
	
	int insertMember(Member m);
	int checkId(String memberId);
	Member memberLogin(Member m);

}
