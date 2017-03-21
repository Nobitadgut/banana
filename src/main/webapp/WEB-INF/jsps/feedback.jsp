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
		 <div class="weui-cells weui-cells_form" style="margin: 3.5%;border-radius: 10px;">
            <div class="weui-cell">
                <div class="weui-cell__bd">
                    <textarea class="weui-textarea" placeholder="请输入文本" rows="3"></textarea>
                    <div class="weui-textarea-counter"><span>0</span>/200</div>
                </div>
            </div>
        </div>
		 <div class="weui-cell" style="background: #FFFFFF;margin: 3.5%;border-radius: 10px;">
                <div class="weui-cell__hd"><label class="weui-label">您的联系方式:</label></div>
                <div class="weui-cell__bd">
                    <input class="weui-input"  placeholder="手机或电子邮箱"/>
                </div>
            </div>
            <a href="javascript:;" class="weui-btn weui-btn_primary" style="background-color: #0091FF;margin: 10%;border-radius:30px;">提交</a>
	</body>
	
</html>