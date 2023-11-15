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

<!-- 수정 페이지 -->

<div>
	<form action="emp2_modify" method="post">
	<input type="submit" value="수정" >
	<input type="hidden" name="empno" value="${empDTO.empno }">
	
	
	<a href="emp2_detail?empno=${empDTO.empno }">
	<input type="button" value="취소">
	</a>
</div>

<table border=1>
<thead>
	<tr>
		<th>empno</th>
		<th>ename</th>
		<th>job</th>
		<th>mgr</th>
		<th>hiredate</th>
		<th>sal</th>
		<th>comm</th>
		<th>deptno</th>
	</tr>
</thead>
<tbody>
		<tr>
			<td>${empDTO.empno }</td>
			<td><input type="text" value="${empDTO.ename }" name="ename"></td>
			<td><input type="text" value="${empDTO.job }" name="job"></td>
			<td><input type="text" value="${empDTO.mgr }" name="mgr"></td>
			<td><input type="text" value="${empDTO.hiredate }" name="hiredate"></td>
			<td><input type="text" value="${empDTO.sal }" name="sal"></td>
			<td><input type="text" value="${empDTO.comm }" name="comm"></td>
			<td><input type="text" value="${empDTO.deptno }" name="deptno"></td>
		</tr>
</tbody>

</table>
	</form>

</body>
</html>