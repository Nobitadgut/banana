	document.getElementById('time').innerHTML = getnowtime();
	function getnowtime() {
		var nowtime = new Date();
		var year = nowtime.getFullYear();
		var month = padleft0(nowtime.getMonth() + 1);
		var day = padleft0(nowtime.getDate());
		var hour = padleft0(nowtime.getHours());
		var minute = padleft0(nowtime.getMinutes());
		var second = padleft0(nowtime.getSeconds());
		return year + "-" + month + "-" + day + " " + hour + ":" + minute + ":"
				+ second;
	}
	//补齐两位数  
	function padleft0(obj) {
		return obj.toString().replace(/^[0-9]{1}$/, "0" + obj);
	}
	
