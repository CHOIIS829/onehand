package com.insu.onehand.member.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Member {
	
	private String memberId;
	private String memberPwd;
	private String memberName;
	private String email;
	private String gender;
	private Date createDate;
	private String status;
	private String changeName;
	
}
