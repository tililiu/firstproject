<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addstuinfo_result.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
  	<%request.setCharacterEncoding("utf-8"); %>
  	<jsp:useBean id="stuInfo" class="com.first.model.studentInfo"></jsp:useBean>
  	<jsp:useBean id="stuInfoService" class="com.first.service.studentInfoService"></jsp:useBean>
  	<jsp:setProperty property="*" name="stuInfo"/>
  	
  	<%
  		if(stuInfoService.addStudent(stuInfo)) {
  			out.print("添加学生信息成功");
  		} else {
  			out.print("添加失败");
  		}
  	 %>
  </body>
</html>
