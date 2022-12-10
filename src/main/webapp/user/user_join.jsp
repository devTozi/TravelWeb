<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp"%>
<section class="grid-wrap">

	<div align = "center" class = "user-wrap">
		<form action="loginform.user" method="post" class = "user-form">

			<table>
				<h3>JOIN</h3>
				<p>반가워요!<br><span>TRAVELER</span>를 이용하시려면<br>가입 부탁드려요!
				</p>
				<br>
				<!-- 프로필 이미지 -->
				<tr>
					<td>프로필 이미지 <br>
						<input type="file" accept="image/jpeg" name="profileimage" value="프로필이미지">
					</td>
				</tr>
				
				<tr>
					<td><input type="text" name="name" placeholder="이름"
						pattern="[가-힣]{5,}" value="<%--${vo.name}--%>" required="required"> <br>
						<span>*이름은 한글로 5글자이하</span>
					<td>
				</tr>
				<tr>
					<td><input type="email" name="email" placeholder="이메일"
						value="<%--${vo.email}--%>" required="required"></td>
				</tr>
				<tr>
					<td><input type="text" name="id" placeholder="아이디"
						value="<%--${vo.id}--%>" pattern="\w{4,8}" required readonly> <br>
						<span>*아이디는 영어 대문자,소문자, 4글자 이상 8글자 이하</span>
					</td>
				</tr>
				<tr>
					<td>
						<input type="password" name="pw" placeholder="비밀번호"
						pattern="\w{8,10}" required="required"> <br>
						<span>*비밀번호는 영어 대문자,소문자, 8글자 이상 10글자 이하</span>
					</td>
				</tr>
				<tr>
					<td><input type="radio" name="gender" value="f" checked>
						여자 <input type="radio" name="gender" value="m"> 남자</td>
				</tr>
				<tr>
				<td><input type="submit" value="가입하기" class="btn btn-success"><td>
				</tr>
			</table>
			
		</form>
	</div>
</section>

<%@ include file="../include/footer.jsp"%>