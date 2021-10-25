package org.kosta.project01.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * Singleton Design Pattern을 적용 : 시스템 상에서 단 한번 객체 생성해 공유하여 사용하고자 할 때 적용하는 설계 패턴 
 */
public class MemberDAO {
	private static MemberDAO instance=new MemberDAO();
	private String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private String username="scott";
	private String userpass="tiger";
	private MemberDAO() {}
	public static MemberDAO getInstance() {
		return instance;
	}
	public void closeAll(PreparedStatement pstmt,Connection con) throws SQLException {
		if(pstmt!=null)
			pstmt.close();
		if(con!=null)
			con.close();
	}
	public void closeAll(ResultSet rs,PreparedStatement pstmt,Connection con) throws SQLException {
		if(rs!=null)
			rs.close();
		closeAll(pstmt, con);
	}
	public MemberVO findMemberById(String id) throws SQLException {
		MemberVO vo = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DriverManager.getConnection(url,username,userpass);
			String sql = "SELECT id,name,address FROM member WHERE id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo = new MemberVO(id,null,rs.getString(2),rs.getString(3));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return vo;
	}
	public void register(MemberVO vo) throws SQLException {
	     Connection con=null;
	      PreparedStatement pstmt=null;
	      try {
	         con=DriverManager.getConnection(url, username, userpass);
	         String sql="insert into member (id,password,name,address) values(?,?,?,?)";
	         pstmt=con.prepareStatement(sql);
			 pstmt.setString(1, vo.getId());
			 pstmt.setString(2, vo.getPassword());
			 pstmt.setString(3, vo.getName());
			 pstmt.setString(4, vo.getAddress());
			 pstmt.executeUpdate();
	      }finally {
	         closeAll(pstmt, con);
	      }
	}//register() end
	public boolean idCheck(String id) throws SQLException {
		boolean flag = false;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DriverManager.getConnection(url,username, userpass);
			String sql = "select count(*) from member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getInt(1)==1) {
					flag = true;
				}
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return flag;
	}//idCheck() end
	public void updateMember(MemberVO vo) throws SQLException {
		Connection con= null;
		PreparedStatement pstmt = null;
		try {
			con = DriverManager.getConnection(url,username,userpass);
			String sql = "UPDATE member SET name=? ,password=? , address=? WHERE id=?";
			pstmt= con.prepareStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getPassword());
			pstmt.setString(3, vo.getAddress());
			pstmt.setString(4, vo.getId());
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
	}//updateMember() end
	
}




























