package com.insu.onehand.board.vo;

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
public class Board {
	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private Date createDate;
	private String status;
	private int count;
	private String memberId;
}
