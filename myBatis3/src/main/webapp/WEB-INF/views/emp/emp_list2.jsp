<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="emp2_comm" method="post">
<input type="submit" value="updatecomm"> 

<table border=1>

	<thead>
		<tr>
			<th>empno</th>
			<th>ename</th>
			<th>comm</th>
			<th>dname</th>
		</tr>
	</thead>
	
	<tbody>
	<c:forEach var="dto" items="${empList }">
		<tr>
			<td><input type="checkbox" name="checkbox">${dto.empno }</td>
			<td>${dto.ename }</td>
			<td>${dto.comm }</td>
			<td>${dto.dname }</td>
		</tr>
	</c:forEach>
	</tbody>
</table>

</form>

</body>
</html>