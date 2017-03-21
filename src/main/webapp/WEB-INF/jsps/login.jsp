<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0">
<title>登录</title>

<script src="/PositionApp/js/jquery.min.js"></script>
<link rel="stylesheet" href="/PositionApp/dist/style/weui.css" type="text/css" />
<style>
</style>
</head>

<body>
		<div class="weui-cells">
			<div class="weui-cell" style="border-bottom: 1px solid #CECECE;background: #EEEEEE;">
				<div class="weui-cell__bd" style="background: #EEEEEE; ">
					<input class="weui-input" id="enterpriseCode"  type="text" placeholder="企业代码" />
				</div>
			</div>
		</div>
		
		<div class="weui-cells" style="margin-top: 0px;">
			<div class="weui-cell" style="border-bottom: 1px solid #CECECE;background: #EEEEEE;">
				<div class="weui-cell__bd" style="background: #EEEEEE; ">
					<input class="weui-input" id="username" type="text" placeholder="用户名" />
				</div>
			</div>
		</div>
		
		<div class="weui-cells" style="margin-top: 0px;">
			<div class="weui-cell" style="border-bottom: 1px solid #CECECE;background: #EEEEEE;">
				<div class="weui-cell__bd" style="background: #EEEEEE; ">
					<input class="weui-input" id="pwd" type="password" placeholder="密码" />
				</div>
			</div>
		</div>
		
		<div class="weui-cells" style="margin-top: 0px;">
			<div class="weui-cell" style="border-bottom: 1px solid #CECECE;background: #EEEEEE;">
				<div class="weui-cell__bd" style="background: #EEEEEE; ">
					<input class="weui-input" type="text" placeholder="验证码" />
				</div>
				<span style="background: #FFFFFF;border-radius:1px;font-size: 0.8em;font-weight:bold;padding: 3px;">获取验证码</span>
			</div>
		</div>
		
		<a href="javascript:;" class="weui-btn weui-btn_primary" id="loginBtn" style="background-color: #0091FF;margin: 25px;border-radius:30px;">登录</a>
		<div id="hint" style="width: 100%;text-align: center;color: #FF5053;" >${errorMsg}</div>
	</body>
	<script type="text/javascript">
	$("#loginBtn").unbind('click').click(function(){
		var jsonObj=JSON.stringify({"userName":$('#username').val(),"pwd":$('#pwd').val(),"enterpriseCode":$('#enterpriseCode').val()});
	    $.ajax({
	           type: 'POST',
	           url: 'http:\/\/192.168.0.110:8080\/PositionApp\/demos\/userLogin',
	           contentType:'application/json;charset=utf-8',
	           data: jsonObj,
	           success: function(data){
	              if(data==''){
	            	  $("#hint").text("登录信息错误");
	              }else{
	            	  $("#hint").text(  $.parseJSON( data ).userName+"登陆成功");
	              }
	           },
	           error: function(result){
	        	   alert("bbbbb");
	              //请求失败之后的操作
	           }
	    });
	});
	</script>
</html>