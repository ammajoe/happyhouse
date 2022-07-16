package com.ssafy.vue.mapper;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.vue.dto.InterestDto;
import com.ssafy.vue.dto.MemberDto;


public interface MemberMapper {

	public MemberDto login(MemberDto memberDto) throws SQLException;
	public MemberDto userInfo(String userid) throws SQLException;
	
	public int registerMember(MemberDto memberDto) throws Exception;
	
	List<MemberDto> listMember() throws Exception;
	public int updateMember(MemberDto memberDto) throws Exception;
	public int deleteMember(String userId) throws Exception;
	
}