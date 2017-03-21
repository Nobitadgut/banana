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
<title>我的终端</title>

<script src="/PositionApp/js/jquery.min.js"></script>
<link rel="stylesheet" href="/PositionApp/dist/style/weui.css" type="text/css" />
<style>
</style>
</head>

<body>
	<div style="padding-left: 15px; font-size: 20px; margin-top: 10px">
		${terminalMsg.demo.name } <span style="color: #FF0000;">${terminalMsg.demo.isOnline }
		</span>
	</div>
	<hr noshade color="#EEEEEE"
		style="margin-top: 10px; margin-bottom: 10px;">
	<div style="padding-left: 15px;">
		<div>
			终端名称：<span id="time">${terminalMsg.demo.num }</span>
		</div>
		<div>
			所属部门：<span>${terminalMsg.department }</span>
		</div>
		<div>
			sim&nbsp&nbsp卡号：<span>${terminalMsg.demo.phone }</span>
		</div>
		<div>
			安装日期：<span>${terminalMsg.installationData }</span>
		</div>
		<div>
			终端类型：<span>${terminalMsg.terminalType }</span>
		</div>
		<div>
			车主姓名：<span>${terminalMsg.userName }</span>
		</div>
		<div>
			联系电话：<span>${terminalMsg.contactNum }</span>
		</div>
	</div>
</body>
	
</html>