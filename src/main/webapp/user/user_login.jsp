<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp"%>
	<section class="grid-wrap">
		<div align = "center">
			<form action="loginform.user" method="post">
				<span><b>LOGIN</b></span><br>
				<span>안녕하세요.<br>travel gallery에 오신것을 환영합니다.</span><br>
				
				<input type="text" name="id" placeholder="ID"><br>
				<input type="password" name="pw" placeholder="PASSWORD"><br>
				
				<input type="submit" value="로그인" class="btn btn-success">
				
				<input type="button" value="회원가입" class="btn btn-success">
			</form>
		</div>
	</section>
	
<%@ include file="../include/footer.jsp"%>