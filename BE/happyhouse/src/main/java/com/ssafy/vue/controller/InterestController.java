package com.ssafy.vue.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.vue.dto.InterestDto;
import com.ssafy.vue.service.InterestService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Api("InterestController V1")
@RestController
@RequestMapping("/interest")
//@CrossOrigin(origins = { "*" }, maxAge = 6000)
public class InterestController {

	private static final Logger logger = LoggerFactory.getLogger(InterestController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";

	@Autowired
	private InterestService interestService;

	@ApiOperation(value = "관심지역", notes = "관심지역 등록. 그리고 DB입력 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PostMapping
	public ResponseEntity<String> registerInterest(@RequestBody InterestDto interestDto) throws Exception {
		logger.debug("registerInterest - 호출");
		if (interestService.registerInterest(interestDto)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
	
	@ApiOperation(value = "관심 지역 목록", notes = "해당하는 id의 관심지역 정보를 반환한다.", response = List.class)
	@GetMapping("{userid}")
	public ResponseEntity<List<InterestDto>> selectInterest(@PathVariable String userid) throws Exception {
		logger.debug("searchInterest - 호출");
		return new ResponseEntity<List<InterestDto>>(interestService.searchInterest(userid), HttpStatus.OK);
	}
	
	@ApiOperation(value = "관심지역 글삭제", notes = "dongCode에 해당하는 관심지역을 삭제한다. 그리고 DB삭제 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@DeleteMapping("{interestno}")
	public ResponseEntity<String> deleteInterest(@PathVariable int interestno) throws Exception {
		logger.debug("deleteInterest - 호출");
		if (interestService.deleteInterest(interestno)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
	
}