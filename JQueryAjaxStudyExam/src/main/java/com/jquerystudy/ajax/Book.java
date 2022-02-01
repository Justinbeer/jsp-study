package com.jquerystudy.ajax;

import java.sql.Timestamp;

// 하나의 도서 정보를 저장하는 VO(Value Object) 클래스
public class Book {
	
	// isbn 코드, 도서명, 가격, 저자, 출판일, 출판사, 도서 설명 
	private String isbnCode;
	private String bookName;
	private int price;
	private String writer;
	private Timestamp pubDate;
	private String publisher;	
	private String description;
	
	
	public Book(String isbnCode, String bookName, int price, String writer, 
			Timestamp pubDate, String publisher, String description) {
		this.isbnCode = isbnCode;
		this.bookName = bookName;
		this.price = price;
		this.writer = writer;
		this.pubDate = pubDate;		
		this.publisher = publisher;
		this.description = description;
	}
	
	public String getIsbnCode() {
		return isbnCode;
	}
	public void setIsbnCode(String isbnCode) {
		this.isbnCode = isbnCode;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Timestamp getPubDate() {
		return pubDate;
	}
	public void setPubDate(Timestamp pubDate) {
		this.pubDate = pubDate;
	}	
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}	
}
