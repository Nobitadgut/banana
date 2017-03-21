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
<script src="/PositionApp/js/app.js" type="text/javascript"></script>

<style type="text/css">
body {
	background: #EEEEEE
}
</style>

</head>

<body>
	<!-- 搜索栏-->
	<div class="page__bd">
		<!--<a href="javascript:;" class="weui-btn weui-btn_primary">点击展现searchBar</a>-->
		<div class="weui-search-bar" id="searchBar">
			<form class="weui-search-bar__form">
				<div class="weui-search-bar__box" style="height: 28px">
					<i class="weui-icon-search"></i> <input type="search"
						class="weui-search-bar__input" id="searchInput" placeholder="搜索"
						required /> <a href="javascript:" class="weui-icon-clear"
						id="searchClear"></a>
				</div>
				<label class="weui-search-bar__label" id="searchText"> <i
					class="weui-icon-search"></i> <span>搜索</span>
				</label>
			</form>
			<a href="javascript:" class="weui-search-bar__cancel-btn"
				id="searchCancel">取消</a>
		</div>
	</div>

	<!-- 主体 -->
	<c:forEach items="${listItem }" var="item">
		<div class="weui-cells" id="weui-cells"
			style="margin-top: 0px; padding-top: 0px">
			<input type="hidden" value="${item.id }" >
			<div class="weui-cell">
				<div class="weui-cell__hd">
					<img src="/PositionApp/picture/home_boat.png" alt=""
						style="width: 50px; margin-right: 5px; display: block">
				</div>
				<div class="weui-cell__bd">
					<p id="sss">${item.name }</p>
					<p style="font-size: 12px; color: lightgray;">编 号：${item.num }</p>
					<p style="font-size: 12px; color: lightgray;">Sim卡：${item.phone}</p>
				</div>
				<div class="weui-cell__ft">
					<p style="font-size: 12px; color: lightgray; padding-bottom: 20px;">${item.status}</p>
				</div>
			</div>
		</div>
	</c:forEach>

</body>

</html>