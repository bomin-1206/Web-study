package com.example.noticeboard_study;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MemberDBManager {
	public Connection getConnection() throws Exception{
		Class.forName("com.mysql.cj.jdbc.Driver");  // mysql.jar 라이브러리 확인
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/web-study",
				"root","1234");
		return con;
	}

	public List<Member> doselect(){
		List<Member> list = new ArrayList();
		Connection con = null;  // DB연결
		PreparedStatement pstmt = null; // SQL문 작성..
		ResultSet rs = null;  // DB Table 저장..
		try{
			con = getConnection();
			pstmt = con.prepareStatement("select * from member");
			rs = pstmt.executeQuery();
			while (rs.next()){
				Member member = new Member();
				member.setId(rs.getInt("id"));
				member.setUsername(rs.getString("username"));
				member.setPassword(rs.getString("password"));
				member.setGender(rs.getString("gender"));

				list.add(member);
			}
			System.out.println("DB 연결 성공");
		}catch (Exception e){
			e.printStackTrace();
		}
		return list;
	}

	public Member doselectone(String id) {
		Member member = new Member();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = getConnection();
			pstmt = con.prepareStatement("select * from member "
					+ "where id = ?");
			pstmt.setInt(1, Integer.parseInt(id));
			rs = pstmt.executeQuery();
			if (rs.next()) {
				member.setId(rs.getInt("id"));
				member.setUsername(rs.getString("username"));
				member.setPassword(rs.getString("password"));
				member.setGender(rs.getString("gender"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return member;
	}

	public void dodelete(String []ids){
		Connection con = null;
		PreparedStatement pstmt = null;
		// ids [ 2 3 4 ] -> 2,3,4
		String values = "";
		for ( int i =0; i<ids.length; i++){
			if( i == (ids.length-1) )
				values = values + ids[i];
			else
				values = values + ids[i]+",";
		}
		// 2,3,4,
		System.out.println("values = "+values);
		try{
			con = getConnection();
			// sql 구문 준비
			pstmt = con.prepareStatement("delete from member where id in ("+values+")");
			pstmt.executeUpdate();// sql 구문 실행...
		}catch (Exception e){
			e.printStackTrace();
		}
	}

	public void doinsert(String username,String password,String gender){
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			con = getConnection();
			pstmt = con.prepareStatement("insert into member" +
					"(username,password,gender) " +
					"values (?,?,?)");
			pstmt.setString(1,username);
			pstmt.setString(2,password);
			pstmt.setString(3,gender);
			pstmt.executeUpdate();
		}catch (Exception e){
			e.printStackTrace();
		}
	}

	public void doupdate(String username,String password,String gender,String id){
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			con = getConnection();
			pstmt = con.prepareStatement("update member set username=?, " +
					"password=?, " +
					"gender = ? " +
					" where id = ?");
			pstmt.setString(1,username);
			pstmt.setString(2,password);
			pstmt.setString(3,gender);
			pstmt.setInt(4,Integer.parseInt(id));
			pstmt.executeUpdate();
		}catch (Exception e){
			e.printStackTrace();
		}
	}

	public boolean dologinchk(String u,String p){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			con = getConnection();
			pstmt = con.prepareStatement("select * from member where username = ? and password =?");
			pstmt.setString(1, u);
			pstmt.setString(2, p);
			rs = pstmt.executeQuery();
			if(rs.next()){
				System.out.println("행있음");
				return true;
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return false;
	}

}