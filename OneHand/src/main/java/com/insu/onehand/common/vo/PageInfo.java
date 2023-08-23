package com.insu.onehand.common.vo;

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
public class PageInfo {
	private int listCount; // 데이터의 수
	private int currentPage; // 현재 페이지 번호
	private int pageLimit; // 화면에 보여질 페이지 수 
	private int boardLimit; // 화면에 보여질 데이터 수
	private int maxPage; // 전체 페이지 수 
	private int startPage; // 화면에 보여지는 시작 페이지 
	private int endPage; // 화면 보여지는 마지막 페이지 
	private int startRow; // 화면에 보여지는 데이터의 시작 수
	private int endRow; // 화면에 보여지는 데이터의 마지막 수 
}


