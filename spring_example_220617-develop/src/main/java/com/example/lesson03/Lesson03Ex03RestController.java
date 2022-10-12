package com.example.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.lesson03.bo.ReviewBO;

@RestController
public class Lesson03Ex03RestController {
	
	@Autowired
	private ReviewBO reviewBO;
	
	// 요청url: http://localhost/lesson03/ex03?id=10&review=오리지날 콤보 맛이쪙
	@RequestMapping("/lesson03/ex03")
	public String ex03(
			@RequestParam("id") int id,
			@RequestParam("review") String review) {
		
		int row = reviewBO.updateReviewById(id, review);
		return "변경 완료:" + row;
	}
}
