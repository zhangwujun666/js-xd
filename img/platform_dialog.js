function createDialog(options) {
	var pam = {name:"",wid:200,hei:200,htmlStr:"",til:"title",url:null,callFun:null}//组件默认值
	if (options){
		$.extend(pam, options);
	}
	var pamname = $.trim(pam.name);
	var htmlAry = [];

    var bdy = IeTrueBody();
	var _left =  (bdy.clientWidth - pam.wid) / 2 + getScrollLeft();
	var _top = (bdy.clientHeight - pam.hei ) / 2.5 + getScrollTop();
	var v_width = getInnerXY()[0];
	var v_height = getInnerXY()[1];

	htmlAry.push("<div class='dialog-activity ");
	htmlAry.push(pamname);
	htmlAry.push("' style='top:");
	htmlAry.push(_top);
	htmlAry.push("px;left:");
	htmlAry.push(_left);
	htmlAry.push("px;width:");
	htmlAry.push(pam.wid);
	htmlAry.push("px;'><div class='dialog-head'><h3 class='tille'>");
	htmlAry.push(pam.til);
	htmlAry.push("</h3><span class='dialog-close dialog-close-out'></span></div><div class='dialog-body' style='marigin:0;height:");
	htmlAry.push(pam.hei);
	htmlAry.push("px;'>");
	
	if(!!pam.htmlStr)
	{
		if(pamname == "alert"){
			pamname = "alert";
			if($("." + pamname).length == 0){
				htmlAry.push("<span style='width:100%;display:block;margin-top:20px;margin-bottom:20px;'>");
				htmlAry.push(pam.htmlStr);
				htmlAry.push("</span>");
				htmlAry.push("<span style='text-align:center;'><a class='btn ");
				htmlAry.push(pamname);
				htmlAry.push("'>YES</a></span>");
			}
		}else if (pamname == "confirm"){//confirm 
			pamname = "confirm";
			if($("." + pamname).length == 0){
				htmlAry.push("<span style='width:100%;display:block;margin-top:20px;margin-bottom:20px;'>");
				htmlAry.push(pam.htmlStr);
				htmlAry.push("</span>");
				htmlAry.push("<a class='btn b_yes ");
				htmlAry.push(pamname);
				htmlAry.push("'><span style='text-align:center;'>YES</span></a><a class='btn b_no ");
				htmlAry.push(pamname);
				htmlAry.push("'><span style='text-align:center;'>NO</span></a>");
			}
		}else{//如果是普通的情况
			if(!pamname) {
				alert("the json of name is error!" + pamname)
				return;
			}
			if($("." + pamname).length != 0){
				$("." + pamname).remove();
			}
			htmlAry.push(pam.htmlStr);
		}
	}

	htmlAry.push("</div></div><iframe frameborder='0' height='");
	htmlAry.push(v_height);
	htmlAry.push("px' width='");
	htmlAry.push(v_width);
	htmlAry.push("px' class='dialog-mask ");
	htmlAry.push(pamname);
	htmlAry.push("'></iframe>");	
	$("body").append(htmlAry.join(""));
	
	if(!!pam.url)
	{
		$(".dialog-body").html("<iframe style='width:100%;height:100%' frameborder='0' src='"+pam.url+"'></iframe>");
	}

	$("span.dialog-close").click(function (){
		if(pam.callFun){
			pam.callFun();
		}
		removeDialog(pamname);
	});
	if(pamname == "alert"){
		$(".dialog-body a." + pamname).click(function (){
			removeDialog(pamname);
		});
	}
	if (pamname == "confirm"){
		$(".dialog-body a.b_yes." + pamname).click(function (){
			removeDialog(pamname);
			pam.callFun();
			return true;
		});
		$(".dialog-body a.b_no." + pamname).click(function (){
			removeDialog(pamname);
			return false;
		});
	}
	//bigObj = $(".dialog-activity");
	//dragObj = $(".dialog-head");
	addDragEvent($(".dialog-activity." + pamname),$(".dialog-head"));
}
////////////
var w3c=(document.getElementById)? true: false;   

function IeTrueBody(){   
	return (document.compatMode && document.compatMode!="BackCompat")?document.documentElement : document.body;   
}   

function getInnerXY() {
	var bdy = IeTrueBody();
	var sWidth=(bdy.scrollWidth>bdy.clientWidth)?bdy.scrollWidth:bdy.clientWidth; 
	var sHeight=(bdy.scrollHeight>bdy.clientHeight)?bdy.scrollHeight:bdy.clientHeight; 
	return [ sWidth, sHeight ];
}
function getScrollLeft(){   
	var agt=navigator.userAgent.toLowerCase();   
	var ie = ((agt.indexOf("msie") != -1) && (agt.indexOf("opera") == -1) && (agt.indexOf("omniweb") == -1));   
	return ie ? IeTrueBody().scrollLeft : window.pageXOffset;   
}
function getScrollTop(){   
	var agt=navigator.userAgent.toLowerCase();   
	var ie = ((agt.indexOf("msie") != -1) && (agt.indexOf("opera") == -1) && (agt.indexOf("omniweb") == -1));   
	return ie ? IeTrueBody().scrollTop : window.pageYOffset;   
}
///////////
function removeDialog(name){
	if(!$.trim(name)){
		return false;
	}
	$("." + $.trim(name)).remove();
	return true;
}
function toggleDialog(name){
	if(!$.trim(name)){
		return false;
	}
	$("." + $.trim(name)).toggle();
	return true;
}
///////////
var bigObj;
var dragObj;
function addDragEvent(bigObj,dragObj){
	var draging = false;
	var mouseX;
	var mouseY;
	var objX;
	var objY;
	
	 dragObj.mousedown(function (event){
		 draging = true;  
         mouseX = parseInt(event.clientX,10); // 把现在的鼠标的X值记住
         mouseY = parseInt(event.clientY,10);  // 把现在的鼠标的Y值记住
         objY = parseInt(bigObj.css("top"),10); // top//把现在的元素的Y值记住
         objX= parseInt(bigObj.css("left"),10);  // left//把现在的元素的X值记住
         $(this).mousemove(function (event){
	         if (draging) {
	         			// 现在的top值 等于以前的top值+鼠标Y方向的位移差
	             bigObj.css("top", event.clientY - mouseY + objY); 
	             // 现在的left值 等于以前的left值+鼠标X方向的位移差
	             bigObj.css("left", event.clientX - mouseX + objX);  
	         }
		 });
	 }).mouseup(function (event){
		 draging = false;
	 }).mouseover(function (event){
		 dragObj.css("cursor", "move");
	 });
}

function openWin(url, arg, w, h) {
	w = w == null ? 500 : w;
	h = h == null ? 300 : h;
	return showModalDialog(url, arg, "dialogWidth:" + w + "px; dialogHeight:"
			+ h + "px;status:no;help:no");
}