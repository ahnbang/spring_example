package com.example.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.lesson03.bo.ReviewBO;

@RestController
public class Lesson03Ex04RestController {

	@Autowired
	private ReviewBO reviewBO;
	
	// 요청url: http://localhost/lesson03/ex04/1?id=22
	@RequestMapping("/lesson03/ex04/1")
	public String ex04_1(
			@RequestParam(value = "id") int id) {
		
		// db 삭제 -> service 요청
		reviewBO.deleteReviewById(id);
		
		// 응답값 -> String
		return "삭제 성공";
	}
}
