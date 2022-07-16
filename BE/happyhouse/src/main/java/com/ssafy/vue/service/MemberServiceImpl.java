package com.ssafy.vue.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.vue.dto.MemberDto;
import com.ssafy.vue.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public MemberDto login(MemberDto memberDto) throws Exception {
		if(memberDto.getUserid() == null || memberDto.getUserpwd() == null)
			return null;
		return memberMapper.login(memberDto);
	}

	@Override
	public MemberDto userInfo(String userid) throws Exception {
		return memberMapper.userInfo(userid);
	}

	@Override
	public boolean registerMember(MemberDto memberDto) throws Exception {
		return memberMapper.registerMember(memberDto) == 1;
		
	}

	@Override
	public List<MemberDto> listMember() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateMember(MemberDto memberDto) throws Exception {
		return memberMapper.updateMember(memberDto) == 1;
		
	}

	@Override
	public boolean deleteMember(String userid) throws Exception {
		return memberMapper.deleteMember(userid) == 1;
		
	}

}
