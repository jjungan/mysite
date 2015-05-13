<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/mysite/assets/css/board.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<div id="header">
			<jsp:include page="/views/include/header.jsp" flush="false" />
		</div>
		<div id="content">
			<table>
				<tr>
					<th>title</th>
					<td colspan="23" id="title"><input type="text" name="title"></td>
				</tr>
				<tr>
					<th>name</th>
					<td id="name"><input type="text" value="이정안"></td>
					<th>password</th>
					<td id="password"><input type="password" name="password"></td>
				</tr>
				<tr>
					<td colspan="4">
					<textarea cols="80" rows="10">
					</textarea>
					</td>
				</tr>
			</table>
		</div>
		<div id="navigation">
			<c:import url="/views/include/navigation.jsp">
				<c:param name="type" value="guestbook"></c:param>
			</c:import>
		</div>
		<div id="footer">
			<jsp:include page="/views/include/footer.jsp" />
		</div>
	</div>


</body>
</html>