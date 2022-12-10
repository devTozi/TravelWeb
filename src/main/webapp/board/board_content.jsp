<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file = "../include/header.jsp" %>

<div align="center" class="div_center">

	<h3>TravelWeb</h3>
	
	<table border="1" width="500">
	
	
	
			<td>작성자</td>
			${vo.writer }
			
				<li><a href="#"><img src="image.jpg" alt="image">
			<td>글제목</td>
		
		<tr>
			<td colspan="4" align="center">
				<input type="button" value="♥" ">&nbsp;&nbsp;
				<input type="button" value="목록" onclick="location.href='board_list.board'">&nbsp;&nbsp;
				
			</td>
		</tr>
	</table>
	<!--board/board_delete.board  -->
	
	

	

</div>

<%@ include file = "../include/footer.jsp" %>
