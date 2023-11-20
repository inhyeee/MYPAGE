<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title" /></title>
</head>
<body>

	<div>
		<header>
			<tiles:insertAttribute name="header" />
			<nav>홈 | 목록 | 회원</nav>
		</header>
		<aside>
			<tiles:insertAttribute name="side" />
		</aside>
		<div>
			<section
				<tiles:insertAttribute name="body" />
			></section>
		</div>
		<footer>
			<tiles:insertAttribute name="footer" />
		</footer>
	</div>

</body>
</html>