<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>forward 액션 테스트</h2>
<form action="02forwardTest1.jsp" method="post">
	<input type="hidden" name="forwardPage" value="03forwardTest2.jsp">
	<table>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><input type="text" name="age"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="address"></td>
		</tr>
		<tr>
			<td colspan='2'><input type="submit" value="전송"></td>
		</tr>
	</table>
	
</form>


</body>
</html>