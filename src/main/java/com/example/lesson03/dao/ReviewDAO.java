package com.example.lesson03.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.example.lesson03.model.Review;

@Repository
public interface ReviewDAO {
	public Review selectReviewById(int id);
	
	public int insertReview(Review review); // review 객체의 내용을 row(record)로 추가
	
	public int insertReviewAsField(
			@Param("storeId") int storeId, 
			@Param("menu") String menu, 
			@Param("userName") String userName, 
			@Param("point") Double point, 
			@Param("review") String review); // 여러 파라미터들을 row로 추가
	
	public int updateReviewById(
			@Param("id") int id, 
			@Param("review") String review1111);
	
	public void deleteReviewById(int id);
}


