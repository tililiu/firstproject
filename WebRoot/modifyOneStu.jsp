<%@page import="com.first.model.studentInfo"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'modifyOneStu.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="./styles/bootstrap.min.css">
</head>

<body>
	<jsp:useBean id="stuService"
		class="com.first.service.studentInfoService"></jsp:useBean>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		studentInfo stu = stuService.queryStuById(id);
	%>
	<div class="container">
		<h3 class="text-center">学生信息修改</h3>
		<form class="form-horizontal" action="modyfyOneStu_result.jsp"
			method="post">
			<div class="form-group">
				<label for="nickname" class="col-sm-2 control-label">昵称</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="nickname"
						value="<%=stu.getNickname()%>" name="nickname" placeholder="请输入昵称">
				</div>
			</div>
			<div class="form-group">
				<label for="truename" class="col-sm-2 control-label">真实姓名</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="truename"
						value="<%=stu.getTruename()%>" name="truename"
						placeholder="请输入真实姓名">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">性别</label>
				<div class="col-sm-10">
					<label class="radio-inline"> 
						<input 
							type="radio"
							<%if (stu.getSex() == 1) {%> checked <%}%> 
							name="sex" 
							value="1"
						> 男
					</label> 
					<label class="radio-inline"> 
					<input 
						type="radio"
						<%if (stu.getSex() == 0) {%> checked <%}%> 
						name="sex" 
						value="0"
					> 女
					</label>
				</div>
			</div>
			<div class="form-group">
				<label for="birthday" class="col-sm-2 control-label">出生日期</label>
				<div class="col-sm-10">
					<input type="date" class="form-control" id="birthday"
						value="<%=stu.getBirthday()%>" name="birthday"
						placeholder="请输入出生日期">
				</div>
			</div>
			<div class="form-group">
				<label for="major" class="col-sm-2 control-label">所学专业</label>
				<div class="col-sm-10">
					<select class="form-control" id="major" name="major">
						<option <%if(stu.getMajor().equals("信息与计算科学")) {%>selected<%}%>>信息与计算科学</option>
						<option <%if(stu.getMajor().equals("计算机科学与技术")) {%>selected<%}%>>计算机科学与技术</option>
						<option <%if(stu.getMajor().equals("网络工程")) {%>selected<%}%>>网络工程</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="course" class="col-sm-2 control-label">所学课程</label>
				<div class="col-sm-10">
					<select class="form-control" id="cource" name="course" size="2" multiple>
						<option
							<%
							String course[] = stu.getCourse();
							for(int i=0; i<course.length;i++){
								if(course[i].equals("软件工程")) {
									%>
									selected
									<%
									break;
								}
							}
						 %>
						>软件工程</option>
						<option
							<%
							for(int i=0; i<course.length;i++){
								if(course[i].equals("数据结构")) {
									%>
									selected
									<%
									break;
								}
							}
						 %>
						>数据结构</option>
						<option
							<%
							for(int i=0; i<course.length;i++){
								if(course[i].equals("数据库")) {
									%>
									selected
									<%
									break;
								}
							}
						 %>
						>数据库</option>
						<option
							<%
							for(int i=0; i<course.length;i++){
								if(course[i].equals("高等代数")) {
									%>
									selected
									<%
									break;
								}
							}
						 %>
						>高等代数</option>
						<option
							<%
							for(int i=0; i<course.length;i++){
								if(course[i].equals("大学物理")) {
									%>
									selected
									<%
									break;
								}
							}
						 %>
						>大学物理</option>
						<option
							<%
							for(int i=0; i<course.length;i++){
								if(course[i].equals("计算机组成原理")) {
									%>
									selected
									<%
									break;
								}
							}
						 %>
						>计算机组成原理</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">兴趣</label>
				<div class="col-sm-10">
					<label class="checkbox-inline"> 
					<input type="checkbox" name="interest" value="eat"
						<%
							String interest[] = stu.getInterest();
							for(int i=0; i<interest.length;i++){
								if(interest[i].equals("eat")) {
									%>
									checked
									<%
									break;
								}
							}
						 %>> 吃饭
					</label> <label class="checkbox-inline"> 
					<input type="checkbox" name="interest" value="drink"
						<%
							for(int i=0; i<interest.length;i++){
								if(interest[i].equals("drink")) {
									%>
									checked
									<%
									break;
								}
							}
						 %>
					> 喝酒
					</label> <label class="checkbox-inline"> 
					<input type="checkbox" name="interest" value="sleep"
						<%
							for(int i=0; i<interest.length;i++){
								if(interest[i].equals("sleep")) {
									%>
									checked
									<%
									break;
								}
							}
						 %>
					> 睡觉
					</label>
				</div>
			</div>
			<div class="form-group">
				<label for="remark" class="col-sm-2 control-label">备注</label>
				<div class="col-sm-10">
					<textarea class="form-control" rows="3" id="remark" name="remark"><%=stu.getRemark()%></textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="hidden" name="id" value="<%=stu.getId() %>">
					<button type="submit" class="btn btn-primary">提交</button>
					<button type="reset" class="btn btn-default">重置</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
