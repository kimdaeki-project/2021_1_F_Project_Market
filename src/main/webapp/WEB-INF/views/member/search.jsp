<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>아이디 비번찾기</h1>

<form action="./search" method="post">

가입한 이름<input type="text" class="name" name="name"/>
가입한 폰번호<input type="text" class="phone" name="phone"/>

<button type="submit">입력</button>
</form>



</body>
</html>