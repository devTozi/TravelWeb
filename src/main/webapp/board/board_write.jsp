<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp" %>

<div align="center" class="div_center">
	<h3>게시판 글 작성 페이지</h3>
	<hr>
	
		<table>
				<br>
			
				<br>
				<!-- 프로필 이미지 -->
				
				
				<tr>
					<td><input type="text" name="title" placeholder="제목"
						value="<%--${vo.name}--%>" required="required"> <br>
					<td>
				</tr>
				<tr>
				<td width="20%">글내용</td>
				<td colspan="3" height="120px">${vo.content }</td>
				</tr>
				
				<tr>
					<td>사진등록
						<input type="file" accept="image/jpeg" name="profileimage" value="프로필이미지">
					</td>
				</tr>
				
				<tr>
				<td><input type="submit" value="등록하기" class="btn btn-success"onclick="location.href='board_content.board'">  
				<input type="submit" value="취소하기" class="btn btn-success"onclick="location.href='board_list.board'"><td>
				</tr>
			</table>
			
		</form>
	</div>
</section>

<%@ include file = "../include/footer.jsp" %>