package com.TravelWeb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TravelWeb.user.service.UserService;
import com.TravelWeb.user.service.UserServiceImpl;

@WebServlet("*.user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 한글 처리
		request.setCharacterEncoding("utf-8");

		// 요청 분기
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring(path.length());
		System.out.println("요청경로: "+command);

		// 서비스 영역
		UserService service = new UserServiceImpl();
		
		if(command.equals("/user/user_join.user")) {
			
			// 회원가입 페이지 이동
			request.getRequestDispatcher("user_join.jsp").forward(request, response);
			
		}else if(command.equals("/user/user_login.user")){
			
			// 로그인 페이지 이동
			request.getRequestDispatcher("/user/user_login.jsp").forward(request, response);
			
		}

	}

}
