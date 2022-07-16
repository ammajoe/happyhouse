package com.ssafy.vue.dto;


public class ArticleDto {
	
	private String articleUrl;
	private String title;
	
	public ArticleDto(String subject, String url) {
		// TODO Auto-generated constructor stub
		this.title = subject;
		this.articleUrl = url;
	}
	
	public String getArticleUrl() {
		return articleUrl;
	}
	public void setArticleUrl(String articleUrl) {
		this.articleUrl = articleUrl;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return "ArticleDto [articleUrl=" + articleUrl + ", title=" + title + "]";
	}
	
}