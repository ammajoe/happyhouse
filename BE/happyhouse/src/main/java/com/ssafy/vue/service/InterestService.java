package com.ssafy.vue.service;

import java.util.List;

import com.ssafy.vue.dto.InterestDto;

public interface InterestService {
	
	public List<InterestDto> searchInterest(String userid) throws Exception;
	public boolean registerInterest(InterestDto interestDto) throws Exception;
	public boolean deleteInterest(int interestno) throws Exception;
}
