<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/setting.jsp"></c:import>
<link rel="stylesheet" href="../resources/css/sign.css">
<title>Join</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="join">
	<div class="container">
		<div class="logo">
			<i class="fas fa-lemon"></i><span>&nbsp;Join</span>
		</div>
		<form:form modelAttribute="memberVO" id="frm" action="./memberJoin" method="post">
				<div class="form-group username">
					<span><label for="username">Username</label></span>
					<form:input class="form-control myCheck" type="text" id="username" name="username" path="username"/>	
					<input type="button" class="btn-check" value="중복확인">
			</div>
			<div class="form-group">
				<label for="password">Password</label> 
				<form:input type="text"	class="form-control myCheck" id="password" name="password" path="password"/>
				<form:errors path="password"></form:errors>
			</div>
			<div class="form-group">			
				<label for="password1">Check Password</label> <form:input type="text" class="form-control myCheck" id="password1" name="password1" path="password1"/>
				<form:errors path="password1"></form:errors>
			</div>
			<div class="form-group">
				<label for="name">Name</label> 
				<form:input type="text" class="form-control myCheck" id="name" name="name" path="name"/>
				<form:errors path="name"></form:errors>
			</div>
			<div class="form-group">
				<label for="phone">Phone</label> 
				<form:input type="text" class="form-control myCheck" id="phone" name="phone" path="phone"/>
				<form:errors path="phone"></form:errors>
			</div>
			<div class="form-group">
				<label for="email">Email</label> 
				<form:input type="text" class="form-control myCheck" id="email" name="email" path="email"/>
				<form:errors path="email"></form:errors>
			</div>
			<div class="join-btn">
				<button type="submit" class="btn-wide btn-submit">Join</button>
			</div>
		</form:form>
	</div>
</div>
	
<c:import url="../template/footer.jsp"></c:import>
<script type="text/javascript" src="../resources/js/common.js"></script>
</body>
</html>