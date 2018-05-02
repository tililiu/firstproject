package com.first.model;

public class studentInfo {
	private int id;
	private String nickname;
	private String truename;
	private byte sex;
	private String birthday;
	private String major;
	private String[] course = { "" };
	private String courses = "";
	private String[] interest = { "" };
	private String interests = "";
	private String remark = "";
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getTruename() {
		return truename;
	}
	public void setTruename(String truename) {
		this.truename = truename;
	}
	public byte getSex() {
		return sex;
	}
	public void setSex(byte sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String[] getCourse() {
		return course;
	}
	public void setCourse(String[] course) {
		this.course = course;
	}
	public String getCourses() {
		if(course != null) {
			courses = "";
			for(int i=0;i<course.length;i++) {
				courses += course[i] + "&";
			}
		}
		courses = courses.substring(0, courses.length() - 1);
		return courses;
	}
	public void setCourses(String courses) {
		this.courses = courses;
	}
	public String[] getInterest() {
		return interest;
	}
	public void setInterest(String[] interest) {
		this.interest = interest;
	}
	public String getInterests() {
		if(interest != null) {
			interests = "";
			for(int i=0;i<interest.length;i++) {
				interests += interest[i] + "&";
			}
		}
		interests = interests.substring(0, interests.length() - 1);
		return interests;
	}
	public void setInterests(String interests) {
		this.interests = interests;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}
