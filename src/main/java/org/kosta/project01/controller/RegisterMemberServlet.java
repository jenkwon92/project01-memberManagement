package org.kosta.project01.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.project01.model.MemberDAO;
import org.kosta.project01.model.MemberVO;

/**
 * Servlet implementation class RegisterMemberServlet
 */
@WebServlet("/RegisterMemberServlet")
public class RegisterMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String confitmPassword = request.getParameter("confirmPassword");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		MemberVO vo = new MemberVO(id, password, name, address);
		
			try {
				MemberDAO.getInstance().register(vo);
				response.sendRedirect("register-result.jsp");
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			
	}//doPost end
}
