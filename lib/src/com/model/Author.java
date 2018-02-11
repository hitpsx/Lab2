package com.model;

public class Author {
	private String id;
	private String name;
	private String age;
	private String country;
	
	public void setID(String id) {
		this.id = id;
	}
	
	public String getID() {
		return this.id;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return this.name;
	}
	
	public void setAge(String age) {
		this.age = age;
	}
	
	public String getAge() {
		return this.age;
	}
	
	public void setCountry(String country) {
		this.country = country;
	}
	
	public String getCountry() {
		return this.country;
	}
	
	public void set(
			String name,
			String age,
			String country) {
		this.name = name;
		this.age = age;
		this.country = country;
	}
	
	public void print() {
		System.out.print(String.format("Author:\n"+
				"    AuthorID %d\n" +
				"    Name     %s\n" +
				"    Age      %d\n" +
				"    Country  %s\n", id, name, age, country));
	}
}
