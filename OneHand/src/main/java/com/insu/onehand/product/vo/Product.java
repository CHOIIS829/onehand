package com.insu.onehand.product.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Product {
	
	private int productNo;
	private String productName;
	private String productContent;
	private int price;
	private Date createDate;
	private int count;
	private String memberId;
	private String memberId2;
	private int categoryNo;
	private int areaId;
	private String changeName;
	private String memberName;
	private String memberName2;
	private String categoryName;
	private String areaName;

}
