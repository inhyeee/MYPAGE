<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="viewEMP">
ename : <input type="text" name="ename">
deptno : <input type="text" name="deptno">
sal : <input type="text" name="sal">
<input type="submit" value="확인">

<br>
${List }

</form>
</body>
</html>