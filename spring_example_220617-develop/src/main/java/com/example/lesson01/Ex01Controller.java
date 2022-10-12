package com.example.lesson01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/lesson01/ex01")
@Controller  // spring bean
public class Ex01Controller {
	
	// String 출력하기
	// 요청url: http://localhost:8080/lesson01/ex01/1
	@ResponseBody						// 리턴되는 값이 Response Body에 담겨져서 보내진다.
	@RequestMapping("/1")  // path 주소 매핑
	public String ex01_1() {
		String text = "<h1>예제1번<br>문자열을 response body로 보내는 예제</h1>";
		return text;
	}
	
	// Map 출력하기 => JSON으로 출력하기
	// 요청url: http://localhost:8080/lesson01/ex01/2
	@RequestMapping("/2")
	public @ResponseBody Map<String, Object> ex01_2() {
		Map<String, Object> map = new HashMap<>();
		map.put("apple", 4);
		map.put("banana", 1000);
		map.put("orange", 5555);
		map.put("grape", 456783);
		
		// map을 리턴하면 JSON으로 나타난다.
		// web starter에 jackson 이라는 라이브러리가 포함 되어있기 때문
		return map;   // {"apple"=4.....}
	}
}




