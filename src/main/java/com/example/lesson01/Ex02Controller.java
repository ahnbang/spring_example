package com.example.lesson01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller    // @RestController가 아님에 주의!!! (jsp)
public class Ex02Controller {
	
	// 요청URL: http://localhost/lesson01/ex02 
	@RequestMapping("/lesson01/ex02")
	public String ex02() {
		// @ResponseBody가 아닌 상태로 String을 리턴하면
		// ViewResolver에 의해 리턴된 String 이름의 view(jsp)를 찾고 화면이 구성된다.
		
		//        /WEB-INF/jsp/    lesson01/ex02          .jsp
		return "lesson01/ex02";
	}
}
