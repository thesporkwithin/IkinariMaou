[macro  name="give_emblem"  ]
[iscript  ]
function give_emb(url,emb_id,pid){
//配置する場所を設定。
if(!mp.width){mp.width=500};
if(!mp.height){mp.height=400};
if(!mp.left){mp.left=200};
if(!mp.top){mp.top=100};
var html = '<div style="z-index:999999999999;position:absolute;width:100%;height:100%;background:rgba(45,45,45, 0.5);">';
html +='<div style="position:absolute;" class="inner_frame">';
html +='<img class="emblem_close_button" src="./tyrano/images/kag/menu_button_close.png" style="corsor:pointer;position:absolute;right:0px;top:0px"></img>';
html +='<iframe name="emb_frame" style="width:100%;height:100%;" src="" frameborder="0" scrolling="no" ></iframe>';
html +='</div>';
html +='</div>';
var j_emb = $(html);
j_emb.find(".inner_frame").css({
width:mp.width,
height:mp.height,
left:mp.left,
top:mp.top
});
j_emb.find(".emblem_close_button").click(function(){
j_emb.remove();
});
$("#tyrano_base").prepend(j_emb);
var j_form = $('<form method="post" action="'+url+'" target="emb_frame"  ></form>');
j_form.append('<input type="hidden" name="emb_id" value="'+emb_id+'" />');
j_form.append('<input type="hidden" name="pid" value="'+pid+'" />');
j_form.append('<input type="hidden" name="pjid" value="'+TG.config.projectID+'" />');
j_form.submit();
} // end function
//非ログイン時
function give_emb_window(url,emb_id,pid){
window.open("","emb_frame");
var j_form = $('<form method="post" action="'+url+'" target="emb_frame"  ></form>');
j_form.append('<input type="hidden" name="emb_id" value="'+emb_id+'" />');
j_form.append('<input type="hidden" name="pid" value="'+pid+'" />');
j_form.append('<input type="hidden" name="pjid" value="'+TG.config.projectID+'" />');
j_form.submit();
}
$.ajax({
type: 'GET',
url: 'http://novelgame.jp/emb/check_login',
dataType: 'jsonp',
jsonpCallback: 'novecole',
success: function(json){
var url = 'http://novelgame.jp/emb/give';
if(json.status !="success"){
return;
}
var is_login = json.data.is_login;
if(is_login=="true"){
give_emb(url,mp.id,mp.pid);
}else{
$.alert("エンブレムを見つけました！",function(){
//ログインしていない場合
give_emb_window(url,mp.id,mp.pid);
});
}
},
error:function(){
return false;
}
});
[endscript  ]
[endmacro  ]
