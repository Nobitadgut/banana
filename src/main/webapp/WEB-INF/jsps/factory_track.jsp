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

#timeId {
	width: 24.5%%;
	height: 30px;
	border-color: #EEEEEE;
	border-style: solid;
	border-top-width: 0px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 0px;
	float: left;
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

#img {
	width: 33%;
	height: 30px;
	justify-content: center;
	display: flex;
	float: left;
}

#img img {
	padding-top: 15%;
	height: 100%;
}
</style>

<body>
		<div id="container"></div>
		<div>
			<div id="timeId">
				<div style="font-size:9px ;text-align: center;margin-top: 7px;">方向</div>
			</div>
			<div id="timeId">
				<div style="font-size:9px ;text-align: center;margin-top: 7px;">速度</div>
			</div>
			<div id="timeId">
				<div style="font-size:9px ;text-align: center;margin-top: 7px;">里程</div>
			</div>
			<div id="timeId" style="border-right-width: 0px;">
				<div style="font-size:9px ;text-align: center;margin-top: 7px;">里程</div>
			</div>
		</div>
		<div>
			<div id="dir">
				<div id="data">北偏东5度</div>
				<div style="font-size:9px ;text-align: center;">方向</div>
			</div>
			<div id="dir">
				<div id="data">100kkm/h</div>
				<div style="font-size:9px ;text-align: center;">速度</div>
			</div>
			<div id="dir" style="border-right-width: 0px;">
				<div id="data">10000km</div>
				<div style="font-size:9px ;text-align: center;">里程</div>
			</div>
		</div>
		<div>
			<div style="font-size: 12px;
			text-align: center;
			padding-top: 80px;
			">2016-12-29 14:38:55 至 2016-12-30 14:38:55</div>
			<div style="font-size:9px ;text-align: center;">东莞 至 深圳</div>
		</div>
	<div>
		<div id="img">
			<img src="/PositionApp/picture/last.png" />
		</div>
		<div id="img">
		    <input id="play_sign" type="hidden" value="0" >
			<img id="play" src="/PositionApp/picture/play.png" />
		</div>
		<div id="img">
			<img src="/PositionApp/picture/next.png" />
		</div>
	</div>
</body>

<script type="text/javascript">

  
</script>
</html>
<script src="/PositionApp/js/factory_track.js"></script>    