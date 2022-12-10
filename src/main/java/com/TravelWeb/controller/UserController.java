package com.TravelWeb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TravelWeb.user.service.UserService;
import com.TravelWeb.user.service.UserServiceImpl;
import com.TravelWeb.user.model.UserVO;

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

		}else if(command.equals("/user/joinform.user")) {
			
			// 회원가입
			// 중복 체크 후 result 값 리턴
			int result = service.join(request, response);

			if(result >= 1) { // 아이디 중복
				// 메시지
				request.setAttribute("msg", "중복된 아이디 or email입니다.");
				request.getRequestDispatcher("user_join.jsp").forward(request, response);

			}else { // 가입 성공

				//request.getRequestDispatcher("user_login.jsp").forward(request, response);

				// MVC2 패턴에서 리다이렉트 방식은 다시 컨트롤러를 태우는 용도로 사용한다.
				response.sendRedirect("user_login.user"); 

			}

		}else if(command.equals("/user/loginform.user")) {
			
			// 로그인 진행
			UserVO vo = service.login(request, response);
			
			if(vo == null) { // 로그인 실패
				
				request.setAttribute("msg", "아이디, 비밀번호를 확인하세요");
				request.getRequestDispatcher("user_login.jsp").forward(request, response);
				
			}else { // 로그인 성공
				
				// 세션에 아이디, 이름을 저장
				// java에서 현재 세션을 얻는 방법
				HttpSession session = request.getSession();
				session.setAttribute("user_id", vo.getId());
				session.setAttribute("user_name", vo.getName());
				
				// 마이페이지
				//response.sendRedirect("/user_mypage.user");
				request.getRequestDispatcher("../index.jsp").forward(request, response);

				
			}
			
		}

	}

}
