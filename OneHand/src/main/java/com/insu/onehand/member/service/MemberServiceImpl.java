package com.insu.onehand.member.service;

import org.springframework.stereotype.Service;

import com.insu.onehand.member.mapper.MemberMapper;
import com.insu.onehand.member.vo.Member;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {
	
	private final MemberMapper memberMapper;

	@Override
	public int insertMember(Member m) {
		return memberMapper.insertMember(m);
	}

	@Override
	public int checkId(String memberId) {
		return memberMapper.checkId(memberId);
	}

	@Override
	public Member memberLogin(Member m) {
		return memberMapper.memberLogin(m);
	}

}
