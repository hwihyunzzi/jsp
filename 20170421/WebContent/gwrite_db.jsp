<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="info" class="gbook.BookInfo" scope="page"/>
<jsp:setProperty name="info" property="*"/>
<%!
	String url="jdbc:mysql://localhost:3306", id="root", pw="123456";
	
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����� ����</title>
</head>
<body>
	<h3>����� ����</h3>
	<%
	try{
		String jdbcUrl="jdbc:mysql://localhost:3306/test";
	     String dbId="root";
	     String dbPass="123456";
	     Class.forName("com.mysql.jdbc.Driver");
	     Connection con=DriverManager.getConnection(jdbcUrl,dbId,dbPass);

		
/* 		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, id, pw);
 */		String sql = "insert into book values ( ?, ?, ?, ? )";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, info.getName());
		st.setString(2, info.getEmail());
		st.setString(3, info.getHome());
		st.setString(4, info.getContents());
		st.executeUpdate();
		st.close();
		con.close();
	}catch(Exception e){
		e.printStackTrace();
		
	}
		
	%>


	<p>
		�����մϴ�. ���������� ��ϵǾ����ϴ�. ������� �б� ���ؼ��� <p>
<a href=gread.jsp>����</a>�� Ŭ���� �ּ���.

	
	</body>
</html>