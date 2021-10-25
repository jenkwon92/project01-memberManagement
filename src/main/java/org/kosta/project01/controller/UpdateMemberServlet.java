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
 * Servlet implementation class UpdateMemberServlet
 */
@WebServlet("/UpdateMemberServlet")
public class UpdateMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//일단 세션을 가지고 온다. 있으면 있는 거 가지고 오고, 없으면 세션을 만들어준다.
		HttpSession session=request.getSession(false);
		if(session==null||session.getAttribute("MemberVO")==null) {//시간이 지나서 끊김//로그인 상태가 아니면 //받아온게 null값
			response.sendRedirect("index.jsp");//index로 보낸다 
			return; // return; keyword는 메서드 실행을 종료
		}		
		request.setCharacterEncoding("utf-8");
	
		//아이디는 변경되지 않으니까 생성자를 생성하지 않고 set을 해주고싶다
		//String id=request.getParameter("id");
		MemberVO vo = (MemberVO) session.getAttribute("MemberVO");
		
		try {
			//MemberVO vo=new MemberVO(id,password,name,address);
			vo.setName(request.getParameter("memberName"));
			vo.setPassword(request.getParameter("memberPass"));
			vo.setAddress(request.getParameter("memberAddress")); 
			
			MemberDAO.getInstance().updateMember(vo);
			request.setAttribute("MemberVO", vo);
			response.sendRedirect("update-result.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
