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

<title>My JSP 'deletestuinfo.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="./styles/bootstrap.min.css">

</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<body>
	<jsp:useBean id="stuInfoService" class="com.first.service.studentInfoService"></jsp:useBean>
	
	<div class="container-fluid">
		<h3>修改学生信息</h3>
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>id</th>
					<th>昵称</th>
					<th>真实姓名</th>
					<th>性别</th>
					<th>出生日期</th>
					<th>所学专业</th>
					<th>所学课程</th>
					<th>兴趣</th>
					<th>备注</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<%
					List stus = stuInfoService.queryAllStu();
					Iterator iter = stus.iterator();
					int i = 0;
					while(iter.hasNext()) {
						studentInfo student = (studentInfo)iter.next();
				%>
				<tr>
					<td><%=student.getId() %></td>
					<td><%=student.getNickname() %></td>
					<td><%=student.getTruename() %></td>
					<td>
						<%
							if(student.getSex() == 1) {
								out.print("男");
							}else {
								out.print("女");
							}
						 %>
					</td>
					<td><%=student.getBirthday() %></td>
					<td><%=student.getMajor() %></td>
					<td><%=student.getCourses() %></td>
					<td><%=student.getInterests() %></td>
					<td><%=student.getRemark() %></td>
					<td>
						<a href="deleteOneStu.jsp?id=<%=student.getId() %>" class="btn btn-default" role="button">删除</a>
					</td>
				</tr>
				<%
					i++;
					}
				 %>
			</tbody>
		</table>
	</div>
</body>
</html>
