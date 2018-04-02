*input_name
[cm  ]
[clearfix  ]
[freeimage  layer="1"  ]
[bg  storage="black.jpg"  time="100"  ]
[layopt  layer="message"  visible="false"  ]
[ptext  layer="1"  text="Please&nbsp;enter&nbsp;your&nbsp;name:"  size="30"  x="180"  y="180"  color="white"  ]
[edit  name="f.Player"  top="290"  left="320"  maxchars="20"  size="30"  height="50"  ]
[glink  clickse="02_b_006.ogg"  text="Accept"  target="*commit"  x="540"  y="285"  ]
[s  ]
*commit
[commit  name="f.Player"  ]
[cm  ]
[if  exp="f.Player==''"  ]
[jump  target="*input_name"  ]
[endif  ]
[freeimage  layer="1"  ]
[iscript  ]
$(".current_span").parent().css("text-align","center");
[endscript  ]
[layopt  layer="message"  visible="true"  ]
[r  ]
[r  ]
[r  ]
Your name is
[l  ]
[r  ]
 “
[emb  exp="f.Player"  ]
” 
[l  ]
[r  ]
Is that right?
[playse  storage="03_b_051.ogg"  loop="false"  ]
[glink  clickse="02_b_006.ogg"  text="Yes"  storage="opening.ks"  target="*input_judge"  x="370"  y="380"  ]
[glink  clickse="02_b_006.ogg"  text="No"  storage="opening.ks"  target="*input_name"  x="370"  y="440"  ]
[s  ]
*input_judge
[cm  ]
[clearfix  ]
[freeimage  layer="1"  ]
[iscript  ]
$(".current_span").parent().css("text-align","center");
[endscript  ]
[if  exp="f.Player=='まおう'||f.Player=='魔王'||f.Player=='マオウ'||f.Player=='maou'"  ]
[layopt  layer="message"  visible="true"  ]
[r  ]
[r  ]
You can’t use that name. Try again.
[l  ]
[r  ]
[jump  target="*input_name"  ]
[endif  ]
[if  exp="f.Player=='マオウ'||f.Player=='maou'"  ]
[layopt  layer="message"  visible="true"  ]
[r  ]
[r  ]
You can’t use that name. Try again.
[l  ]
[r  ]
[jump  target="*input_name"  ]
[endif  ]
[if  exp="f.Player=='ゆうしゃ'||f.Player=='勇者'||f.Player=='ユウシャ'||f.Player=='yuusha'||f.Player=='ゆうしや'"  ]
[r  ]
You can’t use that name. Try again.
[l  ]
[r  ]
[jump  target="*input_name"  ]
[endif  ]
[jump  target="*opning"  ]
*opning
[cm  ]
[clearfix  ]
[freeimage  layer="1"  ]
[layopt  layer="message"  visible="true"  ]
[bg  storage="black.jpg"  time="100"  ]
[stopbgm  ]
[position  left="16"  top="16"  width="928"  height="608"  marginl="8"  margint="8"  marginr="8"  marginb="8"  ]
[font  size="30"  bold="false"  ]
You hear the voice of your old master
[r  ]
faintly echoing from some unknown place…
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
 “Once y’understand the role yer playin’,
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
 defeatin’ the Demon Lord will be a piece o’ cake.
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
 Yeh got that?  Now go get ‘im!
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
 The only one who can stop the Demon Lord
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
 is a ‘True Hero,’ y’hear?
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
 It’ll take the both of yer powers combined…
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
 …Ain’t that a worryin’ thought…”
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
--Yeh got that?--
[l  ]
[resetfont  ]
[playse  storage="03_b_051.ogg"  loop="false"  ]
[glink  clickse="02_b_006.ogg"  text="Yes"  storage="battle.ks"  target="*battle_judge"  x="370"  y="510"  ]
[glink  clickse="02_b_006.ogg"  text="No"  storage="title.ks"  target="*start"  x="370"  y="570"  ]
[s  ]
