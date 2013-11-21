<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<script type="text/javascript" src="js-lib/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="js-lib/jquery.validate.js"></script>
	<script type="text/javascript" src="js-lib/messages_zh.js"></script>
	<script type="text/javascript" src="js/login.js"></script>
  </head>
  
  <body>
  	<div id="header">
  		<div id="header-inner">
  			<div class="logo">
  				<a href="#" target="_self">
  					<img src="images/logo.gif" alt="外币兑换">
  				</a>
  			</div>
  		</div>
  	</div>
	<div id="content">
		<div  class="pic">
			<img src="images/login-content.jpg" alt="货币兑换">
		</div>
		<div class="form">
			<form id="loginform" action="login.do" method="post" onsubmit="return submitcheck();">
			
					<div>
					    <label for="idcardno">身份证号码：</label><br>
	   					<input type="text" id="idcardno" name="idcardno" tabindex="1" maxlength="18"/>
					</div>
					<div>
						<label for="password">登录密码：</label><br>
	   					<input type="password" id="password" name="password" tabindex="2"/>				
					</div>
					<div>
						<label for="reminderquestion">提示问题：</label><br>
		   				<input type="text" id="reminderquestion" name="reminderquestion" tabindex="3"/>
	   				</div>
					<div>
						<label for="answerforreminder">答案：</label><br>
	   					<input type="text" id="answerforreminder" name="answerforreminder" tabindex="4"/>
					</div>
	   				<input type="submit" value="登录" class="btn" id="submitbtn"/>
	 
	   		<div id="wrongmsg" class="hidden"><span id="wrongmsgshow"></span></div>
	   	 </form>
		</div>
		<div class="clear"></div>
	</div>
	<div id="footer">
		<p>©2013 Exchange 使用外币兑换必读 沪ICP证88888号</p>
	</div>
    
  </body>
</html>


<!--     	   <table>
   			<tr>
   				<td><label for="idcardno">身份证号码：</label></td>
   				<td><input type="text" id="idcardno" name="idcardno"/></td>
   			</tr>
   			<tr>
   				<td><label for="password">登录密码：</label></td>
   				<td><input type="password" id="password" name="password"/></td>
   			</tr>
   			<tr>
   				<td><label for="reminderquestion">提示问题：</label></td>
   				<td><input type="text" id="reminderquestion" name="reminderquestion"/></td>
   			</tr>
   			<tr>
   				<td><label for="answerforreminder">答案：</label></td>
   				<td><input type="text" id="answerforreminder" name="answerforreminder"/></td>
   			</tr>
   			<tr>
   				<td colspan="2"><input type="submit" value="登录" class="btn btn-blue" id="submitbtn"/></td>
   			</tr>
   		</table> -->