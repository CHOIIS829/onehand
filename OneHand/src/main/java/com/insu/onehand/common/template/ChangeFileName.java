package com.insu.onehand.common.template;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

public class ChangeFileName {
	
	public static String saveFile(MultipartFile upFile, HttpSession session) {
		// 원본파일명 
		String originName = upFile.getOriginalFilename();
		// 입력시간 기준 문자열 
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		// 10000 ~ 99999 사이의 랜덤 숫자 생성
		int ranNum = (int)(Math.random() * 90000 + 10000);
		// 확장자명 추출
		String ext = "";
		int dotIndex = originName.lastIndexOf(".");
		if(dotIndex >= 0) {
			ext = originName.substring(dotIndex);
		}
		// 새로운 파일명 생성
		String changeName = currentTime + ranNum + ext;
		// 저장 경로
		String savePath = session.getServletContext().getRealPath("/resources/upFiles/");
		// 파일 저장
		try {
			File target = new File(savePath + changeName);
			upFile.transferTo(target);
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
	}

}
