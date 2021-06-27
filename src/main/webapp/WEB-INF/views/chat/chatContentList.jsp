<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
<sec:authentication property="principal" var="principal"/>
</sec:authorize>



<c:forEach var="tmp" items="${clist}">
	
	<c:choose>
		<c:when test="${principal.username ne tmp.sendUser}">
		<!-- 받은 메세지 -->
		<div class="incoming_msg">
			<div class="incoming_msg_img">
			<input type="hidden" value="${tmp.otherUser}">
			<input type="hidden" value="${tmp.profile}">
			<input type="hidden" value="${tmp.recvUser}">
					<img src="/resources/upload/member/${tmp.profile}" alt="보낸사람 프로필" width="50px" height="50px"> 
			</div>
			<div class="received_msg">
				<div class="received_withd_msg">
					<p>${tmp.content}</p>
					<span> ${tmp.sendTime}</span>
				</div>
			</div>
		</div>
		</c:when>
		
		<c:otherwise>
		<!-- 보낸 메세지 -->
		<div class="outgoing_msg">
			<div class="sent_msg">
				<p>${tmp.content}</p>
				<span> ${tmp.sendTime}</span>
			</div>
		</div>
		</c:otherwise>
	</c:choose>


</c:forEach>
