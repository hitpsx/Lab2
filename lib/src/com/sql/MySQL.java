package com.sql;

import java.sql.*;
import java.util.ArrayList;
import java.util.Vector;
import com.model.*;



public class MySQL {
    private final String driver = "com.mysql.jdbc.Driver";
	private final String url = "jdbc:mysql://localhost:3306/bookdb";
	private final String user = "root";
	private final String password = "woaini123";
	
	/*private final String url = "jdbc:mysql://w.rdc.sae.sina.com.cn:3306/app_hitpsx";
	private final String user = "mxllm0zj55";
	private final String password = "z3im552ylhzxxkix3khyxiw5i125wlzk512ij4lm";
	*/
	private Connection con = null;
	private Statement stm = null;
	private ResultSet res = null;
	
	public MySQL() {
		try {
			Class.forName(driver).newInstance();
			con = DriverManager.getConnection(url, user, password);
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	//按照名字查所有名字
	public Vector<Author> selectAuthor(String name) {
		Vector<Author> ret = new Vector<Author>();
		try {
			stm = con.createStatement();
			String sql = String.format("SELECT * FROM Author WHERE Name = \"%s\";", name);
			res = stm.executeQuery(sql);
			while (res.next()) {
				Author author = new Author();
				author.setID(res.getString("AuthorID"));
				author.setAge(res.getString("Age"));
				author.setCountry(res.getString("Country"));
				author.setName(res.getString("Name"));
				ret.add(author);
			}
			stm.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}
	//按照名字查id
	public ArrayList<String>  search(String name) {
		ArrayList<String> strId = new ArrayList<String>();
		try {
			stm = con.createStatement();
			String sql = String.format("SELECT * FROM Author WHERE Name = \"%s\";", name);
			res = stm.executeQuery(sql);
			while (res.next()) {
				Author author = new Author();
				author.setID(res.getString("AuthorID"));
				strId.add(author.getID());
			}
			stm.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return strId;
	}
	public Vector<Book> selectBook(ArrayList<String> strId) {
		Vector<Book> ret = new Vector<Book>();
		for(int i=0;i<strId.size();i++) {
			String id=(String)strId.get(i);
			try {
				stm = con.createStatement();
				String sql = String.format("SELECT * FROM Book WHERE authorid = '%s';",id);
				res = stm.executeQuery(sql);
				if (res.next()) {
					Book book = new Book();
					book.setISBN(res.getString("ISBN"));
					book.setTitle(res.getString("Title"));
					book.setPrice(res.getString("Price"));
					book.setPublishDate(res.getString("PublishDate"));
					book.setPublisher(res.getString("Publisher"));
					book.setAuthorID(res.getString("AuthorID"));
					ret.add(book);
				}
				stm.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return ret;
	}
	public Book selectBookBytitle(String title,String id) {
		Book book = new Book();
		try {
			stm = con.createStatement();
			String sql = String.format("SELECT * FROM Book WHERE title = '%s' and authorid='%s';",title,id);
			res = stm.executeQuery(sql);
			if (res.next()) {
				book.setISBN(res.getString("ISBN"));
				book.setTitle(res.getString("Title"));
				book.setPrice(res.getString("Price"));
				book.setPublishDate(res.getString("PublishDate"));
				book.setPublisher(res.getString("Publisher"));
				book.setAuthorID(res.getString("AuthorID"));				
			}
			stm.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return book;
	}
	public Author selectAuthorByid(String id) {
		Author author = new Author();
		try {
			stm = con.createStatement();
			String sql = String.format("SELECT * FROM Author WHERE authorid = \"%s\";", id);
			res = stm.executeQuery(sql);
			while (res.next()) {				
				author.setID(res.getString("AuthorID"));
				author.setAge(res.getString("Age"));
				author.setCountry(res.getString("Country"));
				author.setName(res.getString("Name"));
			}
			stm.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return author;
	}
	
	public void deleteBook(String id) {
		try {
			stm = con.createStatement();
			String sql = String.format("delete  FROM book WHERE isbn = \"%s\";", id);
			stm.executeUpdate(sql);
			stm.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void update(String authorName,String publisher,String publishdate,String price,String isbn,String id) {
		try {
			stm = con.createStatement();
			String sql = String.format("update book set publisher='%s',publishdate='%s',price='%s' WHERE isbn = \"%s\";",publisher,publishdate,price,isbn);
			stm.executeUpdate(sql);
			sql=String.format("update author set Name='%s' WHERE authorid = \"%s\"",authorName,id);
			stm.executeUpdate(sql);
			stm.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void close() {
		try {
			if (con != null) con.close();
			if (stm != null) stm.close();
			if (res != null) res.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
	}
}
