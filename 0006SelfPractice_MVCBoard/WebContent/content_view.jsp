<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="modify.do" method="post">
<input type="hidden" name="bId" value="${contetn_view.bId }">
<table width="500" cellpadding="0" cellspacing="0" border="1">
<tr>
	<td>번호</td><td>${content_view.bId }</td>
</tr>
<tr>
	<td>히트</td><td>${content_view.bHit }</td>
</tr>
<tr>
	<td>이름</td>
	<td><input type="text" name="bName" value="${content_view.bName }"></td>
</tr>
<tr>
	<td>제목</td>
	<td><input type="text" name="bTitle" value="${content_view.bTitle }"></td>
</tr>
<tr>
	<td>내용</td>
	<td><input type="text" name="bContent" value="${content_view.bContent }"></td>
</tr>
<tr>
	<td colspan="2">
	<input type="submit" value="수정">&nbsp;
	<a href="list.do">목록보기</a>&nbsp;
	<a href="delete.do?bId=${contetn_view.bId }">삭제</a>
	<a href="reply_view.do?bId=${contetn_view.bId }">답글달기</a>
	</td>
</tr>
</table>
</form>
</body>
</html>