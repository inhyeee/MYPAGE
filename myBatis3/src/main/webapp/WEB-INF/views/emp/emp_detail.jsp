<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 선택한 이름 페이지 -->

<div>

	<form action="emp2_del" method="post">
	
	<a href="emp2_modify_list?empno=${empDTO.empno }"><input type="button" value="수정"></a>
	
	<input type="submit" value="삭제" >
	<input type="hidden" name="empno" value="${empDTO.empno }">
	
	
	<a href="emp2"><input type="button" value="취소"></a>

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
			<td>${empDTO.ename }</td>
			<td>${empDTO.job }</td>
			<td>${empDTO.mgr }</td>
			<td>${empDTO.hiredate }</td>
			<td>${empDTO.sal }</td>
			<td>${empDTO.comm }</td>
			<td>${empDTO.deptno }</td>
		</tr>
</tbody>

</table>

	</form>

</body>
</html>