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
#nav {
	width: 100%;
	height: auto;
	margin: 0 auto;
	position: fixed;
	bottom: 0;
}

#img {
	width: 25%;
	height: 15%;
	float: left;
	text-align: center;
}

#img img {
	height: 8%;
}

#img span {
	font-size: 12px;
}
</style>
</head>

<body>
	<input type="hidden" value="${terminalDetails.id }">

	<div style="padding-left: 15px; font-size: 20px; margin-top: 10px">
		${terminalDetails.demo.name } <span style="color: #FF0000;">${terminalDetails.demo.isOnline }
		</span>
	</div>
	<hr noshade color="#EEEEEE"
		style="margin-top: 10px; margin-bottom: 10px;">
	<div style="padding-left: 15px;">
		<div>
			当前时间：<span id="time"></span>
		</div>
		<div>
			卫星信号：<span>${terminalDetails.satelliteSingal }</span>
		</div>
		<div>
			sim&nbsp&nbsp信号：<span>${terminalDetails.simSingal }</span>
		</div>
		<div>
			行驶速度：<span>${terminalDetails.speed }</span>
		</div>
		<div>
			行驶方向：<span>${terminalDetails.direction }</span>
		</div>
		<div>
			海拔高度：<span>${terminalDetails.height }</span>
		</div>
		<div>
			经&nbsp&nbsp纬&nbsp&nbsp度：<span>${terminalDetails.lonlattude }</span>
		</div>
		<div>
			当前位置：<span>${terminalDetails.curPosition }</span>
		</div>
	</div>

	<div id="nav">
		<div>
			<hr noshade color="#EEEEEE">
		</div>
		<div style="margin-top: 8px">
			<div id="img">
				<img id="navImg_pos" src="/PositionApp/picture/msg_position.png" /> <br />
				<span>最近位置</span>
			</div>
			<div id="img">
				<img id="navImg_fac" src="/PositionApp/picture/msg_factory.png" /> <br />
				<span>历史轨迹</span>
			</div>
			<div id="img">
				<img id="navImg_track" src="/PositionApp/picture/msg_track.png" /> <br />
				<span>实时跟踪</span>
			</div>
			<div id="img">
				<img id="navImg_detail" src="/PositionApp/picture/detail.png" /> <br /> <span>终端信息</span>
			</div>
		</div>
	</div>
</body>

<script src="/PositionApp/js/terminal_details.js"></script>
<script src="/PositionApp/js/cur_time.js"></script>
</html>