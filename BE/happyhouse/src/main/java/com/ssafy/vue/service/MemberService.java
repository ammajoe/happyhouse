package com.ssafy.vue.service;

import java.util.List;

import com.ssafy.vue.dto.MemberDto;
import com.ssafy.vue.dto.InterestDto;

public interface MemberService {

	public MemberDto login(MemberDto memberDto) throws Exception;
	public MemberDto userInfo(String userid) throws Exception;
	
	public boolean registerMember(MemberDto memberDto) throws Exception;
	List<MemberDto> listMember() throws Exception;
	public boolean updateMember(MemberDto memberDto) throws Exception;
	public boolean deleteMember(String userId) throws Exception;
	
	
}
