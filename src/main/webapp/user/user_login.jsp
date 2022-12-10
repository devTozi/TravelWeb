<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
	<section class="grid-wrap">
		<div align = "center" class = "user-wrap">
			<form action="loginform.user" method="post" class = "user-form">
				<h3><b>LOGIN</b></h3>
				<p>안녕하세요.<br><span>TRAVELER</span>와 함께 <br>여행 사진을 공유해보세요!</p><br>
				
				<input type="text" name="id" placeholder="ID"><br>
				<input type="password" name="pw" placeholder="PASSWORD"><br>
				
				<input type="submit" value="로그인" class="btn btn-success">
				
				<input type="button" value="회원가입" class="btn btn-success">
			</form>
		</div>
	</section>
	
<%@ include file="../include/footer.jsp"%>