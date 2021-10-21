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
 * Servlet implementation class FindMemberByIdServlet
 */
@WebServlet("/FindMemberByIdServlet")
public class FindMemberByIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id =request.getParameter("memberId");
		try {
			MemberVO vo = MemberDAO.getInstance().findMemberById(id);
			String path = null;
			if(vo == null) {
				path = "findbyid-fail.jsp";
			}else {
				request.setAttribute("memberVO", vo);
				path = "findbyid-ok.jsp";
			}
			request.getRequestDispatcher(path).forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
