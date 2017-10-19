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
	<h1>Board Form</h1>
	
	<form action="add.do" method="post">
		<div class="form-group">
			<label>제목</label>
			<input type="text" class="form-control" name="title">
		</div>
		<div class="form-group">
			<label>작성자</label>
			<input type="text" class="form-control" name="writer">
		</div>
		<div class="form-group">
			<label>내용</label>
			<textarea rows="5" class="form-control" name="contents"></textarea>
		</div>
		<div class="form-group text-right">
			<button type="submit" class="btn btn-primary btn-sm">Add</button>
			<a href="home.do" class="btn btn-default btn-sm">Home</a>
		</div>
	</form>
	
</div>
</body>
</html>