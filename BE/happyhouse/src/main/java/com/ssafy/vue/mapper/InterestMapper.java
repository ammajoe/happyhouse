package com.ssafy.vue.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import com.ssafy.vue.dto.InterestDto;
@Mapper
public interface InterestMapper {
	
	public List<InterestDto> selectInterest(String userid)throws Exception;
	public int registerInterest(InterestDto interestDto) throws Exception;
	public int deleteInterest(int interestno)throws Exception;
}