*end
[jump  target="*hint"  ]
[jump  target="*hint"  ]
*trueend
[stopbgm  ]
[playbgm  storage="05_game_maoudamashii_9_jingle05.ogg"  ]
[chara_mod  name="yuusha"  face="done"  time="0"  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Hero: “Yeah! We got him! We beat the Demon Lord!”
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
“Hey!”
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
“You can stop hiding now, come on out!”
[l  ]
[chara_mod  name="yuusha"  face="normal"  time="0"  ]
[keyframe  name="animation1"  ]
[frame  p="100%"  x="-571"  ]
[endkeyframe  ]
[chara_show  layer="4"  name="player"  wait="true"  top="320"  left="1124"  ]
[chara_mod  name="player"  face="done"  time="0"  ]
[keyframe  name="animation2"  ]
[frame  p="100%"  x="-130"  ]
[endkeyframe  ]
[kanim  name="yuusha"  keyframe="animation2"  time="2000"  ]
[kanim  name="player"  layer="3"  keyframe="animation1"  time="2000"  ]
[wa  ]
[cm  ]
[chara_mod  name="player"  face="normal"  time="0"  ]
[chara_mod  name="yuusha"  face="done"  time="0"  ]
Hero: “Great job back there!”
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
“That was so cool! Your「Psycho Jack」spell
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
let you take complete control of the Demon Lord!
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
You *really* saved my bacon!”
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
“Huh? 
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
My「Change」spell made things
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
all complicated and confusing?”
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
“Meh, whatever! It all turned out fine!
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
We actually beat the Demon Lord!”
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
“That spell of yours is really something.
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Controlling your enemy’s mind…
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Even a Demon Lord is nothing to fear!”
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
“I’ll be counting on you even more from now on!
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Aaahahahaha!”
[p  ]
[cm  ]
[freeimage  layer="4"  ]
[freeimage  layer="3"  ]
[freeimage  layer="2"  ]
[freeimage  layer="1"  ]
[freeimage  layer="0"  ]
[bg  storage="black.jpg"  time="400"  ]
[wait  time="500"  ]
[jump  storage="staff.ks"  target="*staffroll"  ]
*hint
[eval  exp="f.deadcounter=f.deadcounter+1"  ]
[if  exp="f.hollyFlag==1"  ]
You heard the voice of your old master
[r  ]
faintly echoing once again…
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
“If the Hero’s spirit
[l  ]
[r  ]
is not in the Hero’s body,
[l  ]
[r  ]
You can’t cast 「Holy」!”
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
“Think one more time about
[l  ]
[r  ]
just *who* y’really are!”
[p  ]
[jump  storage="initialize.ks"  ]
[endif  ]
[if  exp="tf.ChangeDoneFlag==1"  ]
You heard the voice of your old master
[l  ]
[r  ]
faintly echoing once again…
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
“If yeh haven’t defeated th’ Demon Lord’s body,
[l  ]
[r  ]
yeh haven’t defeated th’ Demon Lord!”
[p  ]
[jump  storage="initialize.ks"  ]
[endif  ]
[if  exp="tf.SurpriseAttckDoneFlag==1&&f.braveMagicPoint>0"  ]
You heard the voice of your old master
[l  ]
[r  ]
faintly echoing once again…
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
“T’beat th’ Demon Lord
[l  ]
[r  ]
yer gonna need t’use…
[p  ]
his own tools against ’im!”
[p  ]
[jump  storage="initialize.ks"  ]
[endif  ]
[if  exp="tf.SurpriseAttckDoneFlag==1&&f.braveMagicPoint==0"  ]
You heard the voice of your old master
[l  ]
[r  ]
faintly echoing once again…
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
“T’cast a spell, y’need MP!
[l  ]
[r  ]
Use a damn 「Ether」!”
[p  ]
[jump  storage="initialize.ks"  ]
[endif  ]
You heard the voice of your old master
[l  ]
[r  ]
faintly echoing once again…
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
“When yeh find yerself in a heap o’ trouble,
[l  ]
[r  ]
try referrin’ to 「The Basics of Brawling」!”
[p  ]
[jump  storage="initialize.ks"  ]
