<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
<script type="text/javascript"
	src="http://webapi.amap.com/maps?v=1.3&key=d88e8b7e26efaebf1c34eae18e9c49fd"></script>
</head>
<style type="text/css">
#container {
	width: 100%;
	height: 70%;
}

#dir {
	width: 33%;
	height: 50px;
	border-color: #EEEEEE;
	border-style: solid;
	border-top-width: 0px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 0px;
	float: left;
}

#data {
	font-size: 12px;
	text-align: center;
	padding-top: 10px;
	font-weight: bolder;
}

#time {
	font-size: 12px;
	text-align: center;
	padding-top: 80px;
}
</style>

<body>
	<div style="padding-left: 15px; font-size: 20px; margin-top: 5px">
		${aMapTerminalDetails.demo.name } <span style="color: #FF0000;">${aMapTerminalDetails.demo.isOnline }
		</span>
	</div>
	<div id="container"></div>
	<div>
		<div id="dir">
			<div id="data">${aMapTerminalDetails.direction }</div>
			<div style="font-size: 9px; text-align: center;">方向</div>
		</div>
		<div id="dir">
			<div id="data">${aMapTerminalDetails.speed }</div>
			<div style="font-size: 9px; text-align: center;">速度</div>
		</div>
		<div id="dir" style="border-right-width: 0px;">
			<div id="data">${aMapTerminalDetails.mileage }</div>
			<div style="font-size: 9px; text-align: center;">里程</div>
		</div>
	</div>
	<div>
		<div id="time"></div>
		<div style="font-size: 9px; text-align: center;">${aMapTerminalDetails.lonlattude }</div>
	</div>
</body>
<script type="text/javascript">
	var map = new AMap.Map('container');
	map.setZoom(18);
	map.setCenter([ 113.886, 22.927 ]);

	var icon = new AMap.Icon({
		image : "/PositionApp/picture/track_location.png",//24px*24px
		//icon可缺省，缺省时为默认的蓝色水滴图标，
		imageSize : new AMap.Size(24, 24)
	});
	var marker = new AMap.Marker({
		icon : icon,//24px*24px
		position : [ 113.886, 22.927 ],
		offset : new AMap.Pixel(-12, -12),
		map : map
	});
</script>
</html>
<script src="/PositionApp/js/cur_time.js"></script>
<script src="/PositionApp/js/real_time_app.js"></script>