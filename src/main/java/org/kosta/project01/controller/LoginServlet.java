package org.kosta.project01.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kosta.project01.model.MemberDAO;
import org.kosta.project01.model.MemberVO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		try {
			MemberVO vo=MemberDAO.getInstance().login(id, password);
			String url=null;
			if(vo==null) {
				url="login-fail.jsp";
			} else {
				HttpSession session=request.getSession();
				session.setAttribute("mvo", vo);
				url="index.jsp";
			}
			response.sendRedirect(url);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
