<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mysite/assets/css/user.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<div id="header">
		<jsp:include page="/views/include/header.jsp" flush="false"/>
		</div>
		<div id="content">
			<div id="user">

				<form id="join-form" name="joinForm" method="post" action="/mysite/member">
					<div id="formDiv">
					<input type="hidden" name="a" value="updatemember">
					<label class="block-label" for="name">이름</label>
					<input id="name" name="name" type="text" value="${sessionScope.authMember.name }">

					<label class="block-label" for="email">이메일</label>
					<input id="email" name="email" type="text" value="${sessionScope.authMember.email }" disabled="disabled">
					
					<label class="block-label">패스워드</label>
					<input name="password" type="password" value="${sessionScope.authMember.password }" required="required">
					
					<fieldset>
						<legend>성별</legend>
						<c:choose>
							<c:when test="${authMember.gender == 'female'}">
								<label>여</label> <input type="radio" name="gender" value="female" checked="checked">
								<label>남</label> <input type="radio" name="gender" value="male">
							</c:when>
							<c:otherwise>
								<label>여</label> <input type="radio" name="gender" value="female">
								<label>남</label> <input type="radio" name="gender" value="male" checked="checked">
							</c:otherwise>
						</c:choose>
					</fieldset>
					</div>
					<input type="submit" value="수정하기">
				</form>
			</div>
		</div>
		<div id="navigation">
			<jsp:include page="/views/include/navigation.jsp"/>
		</div>
		<div id="footer">
			<jsp:include page="/views/include/footer.jsp"/>
		</div>
	</div>
</body>
</html>