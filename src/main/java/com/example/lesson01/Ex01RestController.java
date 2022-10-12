package com.example.lesson01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/lesson01/ex01")
@RestController  // @Controller + @ResponseBody     API - 데이터 리턴할 때
public class Ex01RestController {
	
	// 요청url: http://localhost:8080/lesson01/ex01/3
	@RequestMapping("/3")
	public String ex01_3() {
		return "@RestController를 사용해 String을 리턴해본다.";
	}
	
	// 요청url: http://localhost:8080/lesson01/ex01/4
	@RequestMapping("/4")
	public Map<String, Object> ex01_4() {
		Map<String, Object> map = new HashMap<>();
		map.put("aaaa", 111);
		map.put("bbbb", 222);
		map.put("cccc", 333);
		map.put("dddd", 44);
		return map;
	}
	
	// 요청url: http://localhost:8080/lesson01/ex01/5
	@RequestMapping("/5")
	public Data ex01_5() {
		Data data = new Data(); // 일반 자바 bean
		data.setId(1);
		data.setName("신보람");
		return data; // 일반 bean 객체로 JSON으로 내려간다.
	}
	
	// 요청url: http://localhost:8080/lesson01/ex01/6
	@RequestMapping("/6")
	public ResponseEntity<Data> ex01_6() {
		Data data = new Data();
		data.setId(1);
		data.setName("신보람");
		
		return new ResponseEntity<>(data, HttpStatus.INTERNAL_SERVER_ERROR); // 500 error
	}
}







