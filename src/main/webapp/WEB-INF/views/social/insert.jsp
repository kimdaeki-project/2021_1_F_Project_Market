<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<c:import url="../template/setting.jsp"></c:import>

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<title>Insert title here</title>

<!-- summernote -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>우리동네 글 작성</h2>
		<br>
		<form class="form" action="./insert" method="POST"
			enctype="multipart/form-data">

			<input type="hidden" name="socialNum"> <label>제목</label> <input
				type="text" name="socialTitle"> <br><br> <label>작성자</label>
			<input type="text" name="username" value="${principal.username}"
				readonly="readonly"> <br><br> <label
				for="category">카테고리</label> <select class="form-control"
				id="socialCategory" name="categoryCode">
				<option value="1">동네맛집</option>
				<option value="2">동네소식</option>
				<option value="3">취미생활</option>
				<option value="4">애완동물</option>
				<option value="5">살림/인테리어</option>
				<option value="6">출산/육아</option>
				<option value="7">기타</option>
			</select> <br><br> <label>글 내용</label>
			<textarea class="form-control myCheck" cols="30" rows="5"
				id="socialContent" name="socialContent"></textarea>

			<input type="submit" value="작성" />
		</form>
	</div>

	<script type="text/javascript" src="/static/jquery/summerFile.js"></script>
</body>
</html>