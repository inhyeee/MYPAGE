<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="emp2_create" method="post">
	empno :<br><input type="text" name="empno" value="${dto.empno }"><br>
	ename :<br><input type="text" name="ename" value="${dto.ename }"><br>
	job :<br><input type="text" name="job" value="${dto.job }"><br>
	mgr :<br><input type="text" name="mgr" value="${dto.mgr }"><br>
	hiredate :<br><input type="text" name="hiredate" value="${dto.hiredate }"><br>
	sal :<br><input type="text" name="sal" value="${dto.sal }"><br>
	comm :<br><input type="text" name="comm" value="${dto.comm }"><br>
	deptno :<br><input type="text" name="deptno" value="${dto.deptno }"><br>
	<br>
	<input type="submit" value="저장">
	</form>

</body>
</html>