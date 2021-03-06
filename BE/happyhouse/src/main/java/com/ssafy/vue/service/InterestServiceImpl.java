package com.ssafy.vue.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssafy.vue.dto.InterestDto;
import com.ssafy.vue.mapper.InterestMapper;

@Service
public class InterestServiceImpl implements InterestService {
	
    @Autowired
	private InterestMapper interestMapper;
    
	@Override
	public List<InterestDto> searchInterest(String userid) throws Exception{
		return interestMapper.selectInterest(userid);
	}
	
	@Override
	public boolean registerInterest(InterestDto interestDto) throws Exception {
		return interestMapper.registerInterest(interestDto) == 1;
	}
	
	@Override
	public boolean deleteInterest(int interestno) throws Exception {
		// TODO Auto-generated method stub
		return interestMapper.deleteInterest(interestno) == 1;
	}

}