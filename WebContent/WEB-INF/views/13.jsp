<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
   List<UserVo> userList = (List<UserVo>) request.getAttribute("userList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>비번</th>
				<th>이메일</th>
			</tr>
		</thead>		
			<tbody>
			<%for(int i = 0; i<userList.size(); i++){ %>
				<tr>
					<td><%=userList.get(i).getNo() %></td>
					<td><%=userList.get(i).getName() %></td>
					<td><%=userList.get(i).getPassword() %></td>
					<td><%=userList.get(i).getEmail() %></td>
				</tr>
				<%} %>
			</tbody>
	</table>
	

	<Br>
	<br>
	//향상된 for문
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>비번</th>
				<th>이메일</th>
			</tr>
		</thead>
		<tbody>
			<%for(UserVo userVo : userList ){%>
			<tr>
				<td><%=userVo.getNo() %></td>
				<td><%=userVo.getName() %></td>
				<td><%=userVo.getPassword() %></td>
				<td><%=userVo.getEmail() %></td>
			</tr>
			<%} %>
		</tbody>
	</table>
	--%>

	<br>
	<br>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>비번</th>
				<th>이메일</th>
				<th>index</th>
				<th>count</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${requestScope.userList}" var="userVo" varStatus="status">
				<tr>
					<td>${userVo.no}</td>
					<td>${userVo.name}</td>
					<td>${userVo.password}</td>
					<td>${userVo.email}</td>
					<td>${status.index}</td>
					<td>${status.count}</td>
				</tr>
			</c:forEach>

			<%for(UserVo userVo : userList ){%>
			<tr>
				<td><%=userVo.getNo() %></td>
				<td><%=userVo.getName() %></td>
				<td><%=userVo.getPassword() %></td>
				<td><%=userVo.getEmail() %></td>
			</tr>
			<%} %>
		</tbody>
	</table>
</body>
</html>