<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>TravelWeb</title>
		<meta name="description" content="Grid Loading and Hover Effect: Recreating Samsung's grid loading effect" />
		<meta name="keywords" content="grid loading, swipe, effect, slide, masonry, web design, tutorial" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/component.css" />
		<script src="js/modernizr.custom.js"></script>
	</head>
	<body>
		<div class="container">
			<!-- Top Navigation -->
			<div class="codrops-top clearfix">
			<a href="${pageContext.request.contextPath}/user/user_login.user"><h2>로그인</h2></a> <!-- 여기 -->
			</div>
			<header class="codrops-header">
				<a href="${pageContext.request.contextPath}/index.jsp"><h1>TRAVELER<span>여행사진을 공유해보세요</span></h1></a>
				<nav class="codrops-demos">
					<a class="current-demo" href="${pageContext.request.contextPath}/index2.jsp">MY GALLERY</a>
					<a href="${pageContext.request.contextPath}/index3.jsp">MY PAGE</a>
				</nav>
			</header>