<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">

<title>My JSP 'addstuinfo.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="./styles/bootstrap.min.css">
</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<body>
	<div class="container">
		<h3 class="text-center">学生信息录入</h3>
		<form class="form-horizontal" action="addstuinfo_result.jsp" method="post">
			<div class="form-group">
				<label for="nickname" class="col-sm-2 control-label">昵称</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="nickname"
						name="nickname" placeholder="请输入昵称">
				</div>
			</div>
			<div class="form-group">
				<label for="truename" class="col-sm-2 control-label">真实姓名</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="truename"
						name="truename" placeholder="请输入真实姓名">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">性别</label>
				<div class="col-sm-10">
					<label class="radio-inline"> <input type="radio" name="sex"
						value="1"> 男
					</label> <label class="radio-inline"> <input type="radio"
						name="sex" value="0"> 女
					</label>
				</div>
			</div>
			<div class="form-group">
				<label for="birthday" class="col-sm-2 control-label">出生日期</label>
				<div class="col-sm-10">
					<input type="date" class="form-control" id="birthday"
						name="birthday" placeholder="请输入出生日期">
				</div>
			</div>
			<div class="form-group">
				<label for="major" class="col-sm-2 control-label">所学专业</label>
				<div class="col-sm-10">
					<select class="form-control" id="major" name="major">
						<option value="xxyjxkx">信息与计算科学</option>
						<option value="jsjkxyjs">计算机科学与技术</option>
						<option value="wlgc">网络工程</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="course" class="col-sm-2 control-label">所学课程</label>
				<div class="col-sm-10">
					<select class="form-control" id="cource" name="course" size="2"
						multiple>
						<option>软件工程</option>
						<option>数据结构</option>
						<option>数据库</option>
						<option>高等代数</option>
						<option>大学物理</option>
						<option>计算机组成原理</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">兴趣</label>
				<div class="col-sm-10">
					<label class="checkbox-inline"> <input type="checkbox"
						name="interest" value="eat"> 吃饭
					</label> <label class="checkbox-inline"> <input type="checkbox"
						name="interest" value="drink"> 喝酒
					</label> <label class="checkbox-inline"> <input type="checkbox"
						name="interest" value="sleep"> 睡觉
					</label>
				</div>
			</div>
			<div class="form-group">
				<label for="remark" class="col-sm-2 control-label">备注</label>
				<div class="col-sm-10">
					<textarea class="form-control" rows="3" id="remark" name="remark"></textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">提交</button>
					<button type="reset" class="btn btn-default">重置</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
