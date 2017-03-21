	//点击事件
	 $(document).ready(function(){
		    $("#navImg_pos").click(function(){	
		    	window.location.href="http://192.168.0.110:8080/PositionApp/demos/AMap/findMapTerminalDetailsById?id="+$("body").find("input").val()+"&type=recent_position";
	          });
	          $("#navImg_fac").click(function(){	
	        	  window.location.href="http://192.168.0.110:8080/PositionApp/demos/AMap/findMapTerminalDetailsById?id="+$("body").find("input").val()+"&type=factory_track";
	          });
	          $("#navImg_track").click(function(){	
	        	  window.location.href="http://192.168.0.110:8080/PositionApp/demos/AMap/findMapTerminalDetailsById?id="+$("body").find("input").val()+"&type=real_time_tracking";
	          });
	          $("#navImg_detail").click(function(){	
	        	  window.location.href="http://192.168.0.110:8080/PositionApp/demos/findTerminalMsgById?id="+$("body").find("input").val();
	          });
	 });
	 
