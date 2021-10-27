package org.kosta.project01.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.project01.model.MemberDAO;
import org.kosta.project01.model.MemberVO;

/**
 * Servlet implementation class FindMemberListByAddressServlet
 */
@WebServlet("/FindMemberListByAddressServlet")
public class FindMemberListByAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String address=request.getParameter("address");
		try {
			ArrayList<MemberVO> list=MemberDAO.getInstance().findMemberListByAddress(address);
			request.setAttribute("list", list);
			request.getRequestDispatcher("findbyaddress-result.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
