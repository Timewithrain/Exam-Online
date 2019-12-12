var maxtime = 120 * 60;
function CountDown() {
	if (maxtime >= 0) {
  		minutes = Math.floor(maxtime / 60);
  		seconds = Math.floor(maxtime % 60);
  		msg = "距离考试结束还有" + minutes + "分" + seconds + "秒";
		document.all["timer"].innerHTML = msg;
		if (maxtime == 5 * 60)alert("距离结束仅剩5分钟");
		--maxtime;
	} else{
		clearInterval(timer);
		alert("时间到，结束!");
    }
 }
 timer = setInterval("CountDown()", 1000); 