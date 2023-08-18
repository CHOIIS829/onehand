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
public class ProductAtta {
	
	private int attaNo;
	private int productNo;
	private String changeName;
	private int fileLevel;
	
}
