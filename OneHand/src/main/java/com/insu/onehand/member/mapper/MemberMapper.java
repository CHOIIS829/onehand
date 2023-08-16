package com.insu.onehand.member.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.insu.onehand.member.vo.Member;

@Mapper
public interface MemberMapper {
	
	int insertMember(Member m);

}
