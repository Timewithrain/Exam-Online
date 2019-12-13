var span1 = document.querySelector(".vanish1");
var span2 = document.querySelector(".vanish2");
var butt = document.getElementById("btn");
var suggest = document.querySelector(".suggest");
var success = document.querySelector(".success");
// var mydiv= document.getElementById("divFrame");
//var mydi1 = document.querySelector(".exam-content");
//var shelter =document.getElementById("mydiv");
var ok1 = document.querySelector(".ok1");
var cancel = document.querySelector(".cancel");
			
			
butt.onclick = function click(){
//mydiv.style.backgroundColor = "#ADADAD";
	//shelter.style.backgroundColor = "#ADADAD";
	// mydiv.style.opacity = "0.7";
	// shelter.style.opacity = "0.7";
	suggest.style.visibility = "visible";
	suggest.style.top = "50%";
	suggest.style.transition = "top 0s ease-in";
}
			
span1.onclick = function(){
	suggest.style.visibility = "hidden";
	//mydiv.style.backgroundColor = "#FFFFFF";
	suggest.style.top = "-610px";
	//shelter.style.zIndex = "0";
  //shelter.style.backgroundColor = "#f4f4f4";
	//shelter.style.opacity = "1";
	//mydiv.style.opacity = "1";
}

cancel.onclick = function(){
	suggest.style.visibility = "hidden";
	//mydiv.style.backgroundColor = "#FFFFFF";
	suggest.style.top = "-610px";
	//shelter.style.zIndex = "0";
    //shelter.style.backgroundColor = "#f4f4f4";
	//shelter.style.opacity = "1";
	//mydiv.style.opacity = "1";
}

ok1.onclick = function(){
	suggest.style.visibility = "hidden";
	suggest.style.top = "-610px";
	//mydiv.style.backgroundColor = "#ADADAD";
	//shelter.style.backgroundColor = "#ADADAD";
	// mydiv.style.opacity = "0.7";
	// shelter.style.opacity = "0.7";
	success.style.visibility = "visible";
	success.style.top = "50%";
	success.style.transition = "top 0s ease-in";
}
