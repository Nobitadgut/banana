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
<title>个人中心</title>

<script src="/PositionApp/js/jquery.min.js"></script>
<link rel="stylesheet" href="/PositionApp/dist/style/weui.css" type="text/css" />
<style>
</style>
</head>
	<body style="background-color:#EEEEEE;"> 
		<div style="background-color:#0091FF;width: 100%;height: 35%; margin: 0 auto;text-align: center;">
			<div style="margin:0 auto;padding: 15%;">
				<img  src="/PositionApp/picture/mine_header.png" style="width: 25%;"/><br />
				<span style="font-size: 12px;color: #FFFFFF;padding-top: 15px;">东江船务有限公司</span><br />
				<span style="font-size: 10px;color: #FFFFFF;">账号：11111111</span>
			</div>
		</div>
		<div class="weui-cells">

            <a class="weui-cell weui-cell_access" href="javascript:;">
                <div class="weui-cell__hd"><img src="/PositionApp/picture/help.png" alt="" style="width:20px;margin-right:5px;display:block"></div>
                <div class="weui-cell__bd">
                    <p>使用帮助</p>
                </div>
                <div class="weui-cell__ft"></div>
            </a>
            <a class="weui-cell weui-cell_access" href="javascript:;">
                <div class="weui-cell__hd"><img src="/PositionApp/picture/about.png" alt="" style="width:20px;margin-right:5px;display:block"></div>
                <div class="weui-cell__bd">
                    <p>关于我们</p>
                </div>
                <div class="weui-cell__ft"></div>
            </a>
             <a class="weui-cell weui-cell_access" href="javascript:;">
                <div class="weui-cell__hd"><img src="/PositionApp/picture/password.png" alt="" style="width:20px;margin-right:5px;display:block"></div>
                <div class="weui-cell__bd">
                    <p>修改密码</p>
                </div>
                <div class="weui-cell__ft"></div>
            </a>
        </div>
        <a href="javascript:;" class="weui-btn weui-btn_primary" style="background-color: #ff0000;margin:10%;margin-top: 28%;border-radius:30px;">退出登录</a>
	</body>
	
</html>