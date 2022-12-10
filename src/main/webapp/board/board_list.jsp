<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file = "../include/header.jsp" %>
	

	<div class="container">
		<h3>Travel Web</h3>

		<table class="table table-bordered">
		
			<tbody>
				<c:forEach var="vo" items="${list}" varStatus="num">
				<tr>
					<td>${num.count }</td>
					<td>${vo.bno }</td>
					<td>${vo.writer }</td>
					<td>
						<a href="board_content.board?bno=${vo.bno}" >${vo.title }</a>
					</td>
					<td>${vo.hit }</td>
				</tr>
				</c:forEach>
			
			</tbody>
			
			<tbody>
				<tr>
					<td colspan="6" align="right">
						<form action="" class="form-inline" >
						  <div class="form-group">
						    <input type="text" name="search" placeholder="제목검색" class="form-control" >
						  	<input type="submit" value="인기순 정렬" class="btn btn-default">
							<input type="submit" value="최신순 정렬" class="btn btn-default" onclick="location.href='board_write.board'">
						  </div>
						</form> 
					</td>
				</tr>
			</tbody>
		
		</table>
	</div>



<%@ include file = "../include/footer.jsp" %>





