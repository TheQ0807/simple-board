<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>board :: list</title>
</head>
<body>
<div class="container">
	<h1>Board Detail</h1>
	
	
	<table class="table table-bordered table-condensed">
		<tbody>
			<tr>
				<th>제목</th><td colspan="3"><c:out value="${board.title }" /></td>
			</tr>	
			<tr>
				<th>작성자</th><td colspan="3"><c:out value="${board.writer }" /></td>
			</tr>	
			<tr>
				<th>등록일</th><td><fmt:formatDate value="${board.createdate }"/></td>
				<th>조회수</th><td><c:out value="${board.hit }" /></td>
			</tr>	
			<tr>
				<td colspan="4">
					<textarea class="form-control" ><c:out value="${board.contents }" /></textarea>
				</td>
			</tr>
		</tbody>
	</table>
	<div class="text-right">
		<a href="home.do" class="btn btn-primary btn-sm">Home</a>
	</div>
	
</div>
</body>
</html>