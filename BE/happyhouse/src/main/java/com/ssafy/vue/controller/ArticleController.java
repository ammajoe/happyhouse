package com.ssafy.vue.controller;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
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

import com.ssafy.vue.dto.ArticleDto;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Api("ArticleController V1")
@RestController
@RequestMapping("/article")
//@CrossOrigin(origins = { "*" }, maxAge = 6000)
public class ArticleController {

	private static final Logger logger = LoggerFactory.getLogger(ArticleController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";
	
    @ApiOperation(value = "뉴스 목록", notes = "뉴스 정보를 반환한다.", response = List.class)
	@GetMapping
	public ResponseEntity<List<ArticleDto>> Crawling() throws Exception {
    	String URL = "https://news.naver.com/main/list.naver?mode=LS2D&mid=shm&sid1=101&sid2=260";
		System.out.println("=======================");
		System.out.println("url: "+ URL);
		
		Document doc = Jsoup.connect(URL).get();
//		System.out.println(doc.toString());
		
		Elements urls = doc.select("div.list_text_inner > a");
		Elements contents = doc.select("div.list_text_inner");
		
//		String title = element.select("h2").text();
//		
//		System.out.println("title: "+ title);
//		System.out.println("=======================");
//		
		List<ArticleDto> list = new ArrayList<ArticleDto>();
//		
//		for(Element el : element.select("a")) {
//			System.out.println(el);
//			System.out.println(el.text());
//		}
		
		for(int i=0; i<6; i++) {
			Element el = contents.get(i);
			Element url = urls.get(i);
//			System.out.println("subject : "+el.text());
//			System.out.println("url: "+ url.attr("href"));
			
			String subject = el.text();
			String Url = url.attr("href");
			
			list.add(new ArticleDto(subject, Url));
		}
		
		System.out.println(list.get(0).toString());
		
		return new ResponseEntity<>(list, HttpStatus.OK);
	}
}