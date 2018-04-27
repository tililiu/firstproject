package com.first.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.first.model.studentInfo;

public class studentInfoService {
	private Connection conn;
	private PreparedStatement pstmt;

	public studentInfoService() {
		conn = new com.first.conn.conn().getCon();
	}

	public Boolean addStudent(studentInfo stu) {
		try {
			pstmt = conn.prepareStatement("insert into studentinfo "
					 + "(nickname, truename, sex, birthday, major, course, interest, remark)"
					 + "values(?,?,?,?,?,?,?,?)");
			pstmt.setString(1, stu.getNickname());
			pstmt.setString(2, stu.getTruename());
			pstmt.setByte(3, stu.getSex());
			pstmt.setString(4, stu.getBirthday());
			pstmt.setString(5, stu.getMajor());
			pstmt.setString(6, stu.getCourses());
			pstmt.setString(7, stu.getInterests());
			pstmt.setString(8, stu.getRemark());
			
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	public List queryAllStu() {
		List stus = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from studentinfo");
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				studentInfo stu = new studentInfo();
				stu.setId(rs.getInt(1));
				stu.setNickname(rs.getString(2));
				stu.setTruename(rs.getString(3));
				stu.setSex(rs.getByte(4));
				if(rs.getDate(5) != null) {
					stu.setBirthday(rs.getDate(5).toString());
				}
				stu.setMajor(rs.getString(6));
				if(rs.getString(7) != null) {
					stu.setCourse(rs.getString(7).split("&"));
				}
				if(rs.getString(8) != null) {
					stu.setInterest(rs.getString(8).split("&"));
				}
				stu.setRemark(rs.getString(9));
				stus.add(stu);
			}
			return stus;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public studentInfo queryStuById(int id) {
		// List stus = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from studentinfo where id=?");
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				studentInfo stu = new studentInfo();
				stu.setId(rs.getInt(1));
				stu.setNickname(rs.getString(2));
				stu.setTruename(rs.getString(3));
				stu.setSex(rs.getByte(4));
				if(rs.getDate(5) != null) {
					stu.setBirthday(rs.getDate(5).toString());
				}
				stu.setMajor(rs.getString(6));
				if(rs.getString(7) != null) {
					stu.setCourse(rs.getString(7).split("&"));
				}
				if(rs.getString(8) != null) {
					stu.setInterest(rs.getString(8).split("&"));
				}
				stu.setRemark(rs.getString(9));
				//stus.add(stu);
				return stu;
			}
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
