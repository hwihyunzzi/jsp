package com.ushrd;

public class MemberInfo {
	private String name;
	private String id;
	private String pw;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	@Override
	public String toString() {
		return "MemberInfo [name=" + name + ", id=" + id + ", pw=" + pw + "]";
	}
	
	
}
