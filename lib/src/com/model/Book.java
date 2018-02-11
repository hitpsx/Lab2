package com.model;

import java.sql.Date;

public class Book {
	private String ISBN;
	private String title;
	private String authorid;
	private String publisher;
	private String publishdate;
	private String price;
	
	public void setISBN(String isbn) {
		this.ISBN = isbn;
	}
	
	public String getISBN() {
		return this.ISBN;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getTitle() {
		return this.title;
	}
	
	public void setAuthorID(String authorid) {
		this.authorid = authorid;
	}
	
	public String getAuthorID() {
		return this.authorid;
	}
	
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
	public String getPublisher() {
		return this.publisher;
	}
	
	public void setPublishDate(String date) {
		this.publishdate = date;
	}
	
	public String getPublishDate() {
		return this.publishdate;
	}
	
	public void setPrice(String price) {
		this.price = price;
	}
	
	public String getPrice() {
		return this.price;
	}
	
	public void set(
			String isbn,
			String title,
			String authorid,
			String publisher,
			String publishdate,
			String price) {
		this.ISBN = isbn;
		this.title = title;
		this.authorid = authorid;
		this.publisher = publisher;
		this.publishdate = publishdate;
		this.price = price;
	}
	public int isEmpty() {
		if(ISBN==null)
			return 0;
		return 1;
	}
	
	public void print() {
		System.out.print(String.format("Book:\n"+
				"    ISBN:       %s\n"+
				"    Title:      %s\n"+
				"    AuthorID:   %d\n"+
				"    Publisher:  %s\n"+
				"    Pulishdate: %s\n"+
				"    Price:      %f\n",
				ISBN, title, authorid, publisher, publishdate.toString(), price));
	}
}
