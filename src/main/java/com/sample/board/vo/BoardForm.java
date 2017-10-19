package com.sample.board.vo;

public class BoardForm {

	private String title;
	private String writer;
	private String contents;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	@Override
	public String toString() {
		return "BoardForm [title=" + title + ", writer=" + writer + ", contents=" + contents + "]";
	}
	
	
	
}
