<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/newregister.css">
	<script type="text/javascript" src="js-lib/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="js/layer/layer.js"></script>
	<script type="text/javascript" src="js-lib/jquery.validate.js"></script>
	<script type="text/javascript" src="js-lib/messages_zh.js"></script>
	<script type="text/javascript" src="js/newregister.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

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
  	<div id="maincontent">
  		<div class="register-main">
  			<h3>注册</h3>
  			<div class="register-left">
  				<div class="register-form">
  					 <form id="registerform" method="post" action="register.do">
				   		<table>
				   			<tr>
				   				<th><label for="name">姓名：</label></th>
				   				<td><input class="myinput" type="text" id="name" name="name"/></td>
				   			</tr>
				   			<tr>
				   				<th><label for="idcardno">身份证号码：</label></th>
				   				<td><input  class="myinput" type="text" id="idcardno" name="idcardno"/></td>
				   			</tr>
				   			<tr>
				   				<th><label for="contact">手机号码：</label></th>
				   				<td><input  class="myinput" type="text" id="contact" name="contact"/></td>
				   			</tr>
				   			<tr>
				   				<th><label for="bankcardno">银行卡号：</label></th>
				   				<td><input  class="myinput" type="text" id="bankcardno" name="bankcardno"/></td>
				   			</tr>
				   			<tr>
				   				<th><label for="password">登录密码：</label></th>
				   				<td><input  class="myinput" type="password" id="password" name="password"/></td>
				   			</tr>
				   			<tr>
				   				<th><label for="confirmpsd">确认密码：</label></th>
				   				<td><input  class="myinput" type="password" id="confirmpsd" name="confirmpsd"/></td>
				   			</tr>
				   			<tr>
				   				<th><label for="reminderquestion">提示问题：</label></th>
				   				<td><input  class="myinput" type="text" id="reminderquestion" name="reminderquestion"/></td>
				   			</tr>
				   			<tr>
				   				<th><label for="answerforreminder">答案：</label></th>
				   				<td><input  class="myinput" type="text" id="answerforreminder" name="answerforreminder"/></td>
				   			</tr>
				   			<tr>
				   				<td></td><td ><input class="btn" type="submit" value="同意协议并注册" id="submitbtn"/></td>
				   			</tr>
							<tr><td></td><td > <a  id="protocol" href="javascript:void(0)">&lt;&lt;网上个人本外币兑换用户注册协议&gt;&gt;</a></td></tr>
				   		</table>
				   	</form>
					<script type="text/javascript">        
				        jQuery(document).ready(function() {            
				            jQuery("#form1").validate();        
				        });    
				    </script>
  				</div>

  			</div>
  			<div class="register-right">
  				<p>已有账号？</p>
  				<a class="button" href="login.do"><span>登录</span></a>
  			</div>
  			<div class="clear"></div>
  		</div>
  		<div class="clear"></div>
  	</div>
  	
  	<div id="footer" >
		<p>©2013 Exchange 使用外币兑换必读 沪ICP证88888号</p>
	</div>

   	<!-- 	<label for="name">姓名：</label><input type="text" id="name" name="name"/>
   		<label for="idcardno">身份证号码：</label><input type="text" id="idcardno" name="idcardno"/>
   		<label for="contact">联系方式：</label><input type="text" id="contact" name="contact"/>
   		<label for="bankcardno">银行卡号：</label><input type="text" id="bankcardno" name="bankcardno"/>
   		<label for="password">登录密码：</label><input type="password" id="password" name="password"/>
   		<label for="confirmpsd">确认密码：</label><input type="password" id="confirmpsd" name="confirmpsd"/>
   		<label for="reminderquestion">提示问题：</label><input type="text" id="reminderquestion" name="reminderquestion"/>
   		<label for="answerforreminder">答案：</label><input type="text" id="answerforreminder" name="answerforreminder"/> -->
  
  </body>
</html>
