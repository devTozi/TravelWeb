<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp"%>
<section>
	<div align = "center" class = "user-wrap">
		
		
		<img alt="프로필 이미지" src="">
		<!-- ${sessionScope.user_id }-->이름 <b>(아이디<!-- ${sessionScope.user_id }-->)</b>님 환영합니다.

		<div>
			<a href="user_logout.user"><input type="submit" value="MY GALLERY" class="btn btn-success"></a><br>
			<a href="user_logout.user"><input type="submit" value="정보수정" class="btn btn-success"></a><br>
			<a href="user_modify.user"><input type="submit" value="로그아웃" class="btn btn-success"></a><br>
			<a href="user_delete.user"><input type="submit" value="탈퇴" class="btn btn-success"></a><br>
		</div>
	</div>
</section>

<%@ include file="../include/footer.jsp"%>