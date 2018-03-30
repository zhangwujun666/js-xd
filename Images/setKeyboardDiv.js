function setKeyBoard(input_txt,div_name,keyboradimage)
{
//建立实体和赋值
    var obj={
    txt:Object,
    div:Object,
    kb_image:Object  
    };
   obj.txt=input_txt;
   obj.div=div_name;
   obj.kb_image=keyboradimage; 
	//获取焦点事件
	$(obj.kb_image).toggle(function(){
	    //把键盘构建到页面div
        	 obj.div.html(set_div);
            $(obj.div).css("display","block");
            //循环div下的键盘给按钮加样式
        	$(obj.div.children()).each(function(i){ 
        	        //加事件
                            $("#row"+i+" input").click(function(){
                                    if(this.type=="button")
                                    {
                                        var txtvalue=$(this).val();
                                       //截取字符串实现退格效果 
                                        if(txtvalue=="退格")
                                        {
                                            obj.txt.val(""+obj.txt.val().substring(0,obj.txt.val().length-1));
                                        }else if(txtvalue=="确定")
                                       {
                                            obj.div.html(""); 
                                            $(obj.div).css("display","none");
                                       } 
                                        else
                                        {
                                       //写入文本 
                                             obj.txt.val(obj.txt.val()+txtvalue);
                                        }
                                    }
                            }); 
                 });
            },function(){
                 obj.div.html(""); 
                 $(obj.div).css("display","none");
            });
}

//排序函数
function getRandom()
{
    return Math.random()-0.5;
}
  //构建键盘
function set_div()
{
    var number=new Array();
    for(var i=0 ;i<10;i++)
    {
        number[i]=i;
    }
    number.sort(getRandom);
    var div_html="<div id=\"row0\">";
		    div_html+="<input name=\"tilde\" type=\"button\" value=\"~\" />";
		    div_html+="<input name=\"exc\" type=\"button\" value=\"!\" />";
		    div_html+="<input name=\"at\" type=\"button\" value=\"@\" />";
		    div_html+="<input name=\"hash\" type=\"button\" value=\"#\" />";
		    div_html+="<input name=\"dollar\" type=\"button\" value=\"$\" />";
		    div_html+="<input name=\"percent\" type=\"button\" value=\"%\" />";
		    div_html+="<input name=\"caret\" type=\"button\" value=\"^\" />";
		    div_html+="<input name=\"ampersand\" type=\"button\" value=\"&\" />";
		    div_html+="<input name=\"asterik\" type=\"button\" value=\"*\" />";
		    div_html+="<input name=\"openbracket\" type=\"button\" value=\"(\" />";
		    div_html+="<input name=\"closebracket\" type=\"button\" value=\")\" />";
		    div_html+="<input name=\"underscore\" type=\"button\" value=\"_\" />";
		    div_html+="<input name=\"plus\" type=\"button\" value=\"+\" />";
	    div_html+="</div>";
	    div_html+="<div id=\"row1\">";
		    div_html+="<input name=\"accent\" type=\"button\" value=\"`\" />";
		    for(var i=0;i<number.length;i++)
		    {
		        div_html+="<input name=\""+number[i]+"\" type=\"button\" value=\""+number[i]+"\" />";
		    }
		    div_html+="<input name=\"-\" type=\"button\" value=\"-\" />";
		    div_html+="<input name=\"=\" type=\"button\" value=\"=\" />";
		    
	    div_html+="</div>";
	    div_html+="<div id=\"row2\">";
		    div_html+="<input name=\"q\" type=\"button\" value=\"q\" />";
		    div_html+="<input name=\"w\" type=\"button\" value=\"w\" />";
		    div_html+="<input name=\"e\" type=\"button\" value=\"e\" />";
		    div_html+="<input name=\"r\" type=\"button\" value=\"r\" />";
		    div_html+="<input name=\"t\" type=\"button\" value=\"t\" />";
		    div_html+="<input name=\"y\" type=\"button\" value=\"y\" />";
		    div_html+="<input name=\"u\" type=\"button\" value=\"u\" />";
		    div_html+="<input name=\"i\" type=\"button\" value=\"i\" />";
		    div_html+="<input name=\"o\" type=\"button\" value=\"o\" />";
		    div_html+="<input name=\"p\" type=\"button\" value=\"p\" />";
		    div_html+="<input name=\"[\" type=\"button\" value=\"[\" />";
		    div_html+="<input name=\"]\" type=\"button\" value=\"]\" />";
	    div_html+="</div>	";
	    div_html+="<div id=\"row3\">";
		    div_html+="<input name=\"a\" type=\"button\" value=\"a\" />";
		    div_html+="<input name=\"s\" type=\"button\" value=\"s\" />";
		    div_html+="<input name=\"d\" type=\"button\" value=\"d\" />";
		    div_html+="<input name=\"f\" type=\"button\" value=\"f\" />";
		    div_html+="<input name=\"g\" type=\"button\" value=\"g\" />";
		    div_html+="<input name=\"h\" type=\"button\" value=\"h\" />";
		    div_html+="<input name=\"j\" type=\"button\" value=\"j\" />";
		    div_html+="<input name=\"k\" type=\"button\" value=\"k\" />";
		    div_html+="<input name=\"l\" type=\"button\" value=\"l\" />";
		    div_html+="<input name=\";\" type=\"button\" value=\";\" />";
		    div_html+="<input name=\"'\" type=\"button\" value=\"'\" />";	
		    div_html+="<input name=\"out\" type=\"button\" value=\"确定\" style=\"width:55px;\" />";
	    div_html+="</div>";
	    div_html+="<div id=\"row4\">";
		    div_html+="<input name=\"z\" type=\"button\" value=\"z\" />";
		    div_html+="<input name=\"x\" type=\"button\" value=\"x\" />";
		    div_html+="<input name=\"c\" type=\"button\" value=\"c\" />";
		    div_html+="<input name=\"v\" type=\"button\" value=\"v\" />";
		    div_html+="<input name=\"b\" type=\"button\" value=\"b\" />";
		    div_html+="<input name=\"n\" type=\"button\" value=\"n\" />";
		    div_html+="<input name=\"m\" type=\"button\" value=\"m\" />";
		    div_html+="<input name=\",\" type=\"button\" value=\",\" />";
		    div_html+="<input name=\".\" type=\"button\" value=\".\" />";
		    div_html+="<input name=\"/\" type=\"button\" value=\"/\" />";
			div_html+="<input name=\"<-\" type=\"button\" value=\"退格\" style=\"width:60px;\" />";
	    div_html+="</div>";
	    return div_html;
}
