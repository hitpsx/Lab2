package com.action;

import java.util.ArrayList;
import java.util.Vector;

import com.model.*;
import com.opensymphony.xwork2.ActionSupport;
import com.sql.MySQL;

public class UserFuntion extends ActionSupport{
	private String authorName;
	private Vector<Author> authorAll;
	private Vector<Book> bookAll;
	private Book book;
	private Author author;
	private String title;
	private String authorid;
	private String bookid;
	private String publisher;
	private String publishdate;
	private String price;
	
	public void setBookid(String bookid) {
		this.bookid=bookid;
	}
	public String getBookid() {
		return bookid;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setAuthorid(String authorid) {
		this.authorid = authorid;
	}
	
	public String getAuthorid() {
		return  authorid;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book=book;
	}
	
	public Author getAuthor() {
		return author;
	}
	public void setAuthor(Author author) {
		this.author=author;
	}
	public  String getAuthorName() {
		return authorName;
	}
	public  void setAuthorName(String authorName) {
		this.authorName=authorName;
	}
	
	public Vector<Author> getAuthorAll() {
		return authorAll;
	}
	public void setAuthorAll(Vector<Author> authorAll) {
		this.authorAll=authorAll;
	}
	
	public Vector<Book> getBookAll() {
		return bookAll;
	}
	public void setBookAll(Vector<Book> bookAll) {
		this.bookAll=bookAll;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
	public String getPublisher() {
		return publisher;
	}
	public void setPublishdate(String publishdate) {
		this.publishdate = publishdate;
	}
	
	public String getPublishdate() {
		return publishdate;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	public String getPrice() {
		return this.price;
	}
	
	
	
	public String SelectAuthor() {
		MySQL sql=new MySQL();
		ArrayList<String> strId = new ArrayList<String>();
		strId=sql.search(authorName);
		bookAll=sql.selectBook(strId);
		if(bookAll==null)
			return "error";
		return "success";
	}
	public String searchBookByTitle() {
		MySQL sql=new MySQL();
		book=sql.selectBookBytitle(title, authorid);
		author=sql.selectAuthorByid(authorid);
		return "success";
	}
	public String deleteBook() {
		MySQL sql=new MySQL();
		sql.deleteBook(bookid);
		book=sql.selectBookBytitle(title, authorid);
		if(book.isEmpty()==1)
			author=sql.selectAuthorByid(authorid);
		return "success";
	}
	public String searchBookMain() {
		MySQL sql=new MySQL();
		ArrayList<String> strId = new ArrayList<String>();
		strId=sql.search(authorName);
		bookAll=sql.selectBook(strId);
		if(bookAll==null)
			return "error";
		return "success";
	}
	public String updateBookByid() {
		MySQL sql=new MySQL();
		book=sql.selectBookBytitle(title, authorid);
		author=sql.selectAuthorByid(authorid);
		return "success";
	}
	public String update() {
		MySQL sql=new MySQL();
		System.out.println(publishdate);
		sql.update(authorName,publisher,publishdate,price,bookid,authorid);
		book=sql.selectBookBytitle(title, authorid);
		author=sql.selectAuthorByid(authorid);
		return "success";
	}
}
