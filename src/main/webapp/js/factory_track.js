 var marker, lineArr = [];

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
	//生成路线
	var lngX = 113.886, latY = 22.927;        
    lineArr.push([lngX, latY]);
    for (var i = 1; i < 4; i++) {
        lngX = lngX + Math.random() * 0.05;
        if (i % 2) {
            latY = latY + Math.random() * 0.0001;
        } else {
            latY = latY + Math.random() * 0.06;
        }
        lineArr.push([lngX, latY]);
    }
    // 绘制轨迹
    var polyline = new AMap.Polyline({
        map: map,
        path: lineArr,
        strokeColor: "#00A",  //线颜色
        // strokeOpacity: 1,     //线透明度
        strokeWeight: 3,      //线宽
        // strokeStyle: "solid"  //线样式
    });
    var passedPolyline = new AMap.Polyline({
        map: map,
        // path: lineArr,
        strokeColor: "#F00",  //线颜色
        // strokeOpacity: 1,     //线透明度
        strokeWeight: 3,      //线宽
        // strokeStyle: "solid"  //线样式
    });
    marker.on('moving',function(e){
        passedPolyline.setPath(e.passedPath);
    })
    map.setFitView();

    //事件
    AMap.event.addDomListener(document.getElementById('play'), 'click', function() {
    	if($('#play_sign').val()==0){
    	$('#play_sign').val(1);
        marker.moveAlong(lineArr, 1500);
        document.getElementById('play').src="/PositionApp/picture/stop.png"
        }else{
        	$('#play_sign').val(0);
        	document.getElementById('play').src="/PositionApp/picture/play.png"
        	 marker.pauseMove();
        }
    }, false);