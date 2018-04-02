*tool
[ignore  exp="tf.DrawFlag==1"  ]
[eval  exp="tf.DrawFlag=1"  ]
[clearfix  name="command1"  ]
[cm  ]
[clearstack  ]
[layopt  layer="message0"  visible="false"  ]
[action_command  ]
[wait  time="50"  ]
[tool_command  ]
[freeimage  layer="1"  ]
[eval  exp="tf.DrawFlag=0"  ]
[s  ]
[endignore  ]
*breve_select_tool
[brave_reset_window  ]
[clearfix  name="command1"  ]
[cm  ]
[clearstack  ]
[layopt  layer="message0"  visible="false"  ]
[action_command  ]
[wait  time="50"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="473"  left="295"  storage="arcenemy/2_battle/2_Window/sub_window.png"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="476"  left="745"  storage="arcenemy/2_battle/9_SelectTool/select_tool_window.png"  ]
[button  name="command1"  graphic="9_SelectTool/select_tool_arrow.png"  enterimg="9_SelectTool/select_tool_arrow_cursor.png"  clickse="01_b_008.ogg"  target="*breve_select_tool2"  x="810"  y="450"  ]
[glink  clickse="02_b_006.ogg"  target="*brave_use"  exp="tf.check=1"  text="Hero"  x="750"  y="510"  ]
[wait  time="50"  ]
[s  ]
*breve_select_tool2
[wait  time="100"  ]
[clearstack  ]
[clearfix  name="command1"  ]
[cm  ]
[action_command  ]
[wait  time="50"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="473"  left="296"  storage="arcenemy/2_battle/9_SelectTool/select_cheage.png"  ]
[button  name="command1"  graphic="9_SelectTool/select_tool_arrow.png"  enterimg="9_SelectTool/select_tool_arrow_cursor.png"  clickse="01_b_008.ogg"  target="*breve_select_tool"  x="330"  y="450"  ]
[glink  clickse="02_b_006.ogg"  name="command1"  target="*brave_use"  exp="tf.check=2"  text="Demon&nbsp;Lord&nbsp;(single-target)"  x="320"  y="490"  layer="3"  ]
[wait  time="50"  ]
[s  ]
*brave_use
[if  exp="tf.tool==1"  ]
[eval  exp="tf.tool=0"  ]
[jump  target="*brave_leaf"  ]
[elsif  exp="tf.tool==2"  ]
[eval  exp="tf.tool=0"  ]
[jump  target="*brave_ether"  ]
[endif  ]
*brave_leaf
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[freeimage  layer="0"  ]
[layopt  layer="message0"  visible="true"  ]
[playse  storage="12_b_034.ogg"  loop="false"  ]
The Hero used 「Medicine」!
[r  ]
[p  ]
[if  exp="tf.check==1"  ]
[eval  exp="f.braveLifePoint=f.braveLifePoint+50"  ]
[freeimage  layer="3"  ]
[brave_status  ]
[chara_show  layer="1"  name="m_window"  top="445"  left="0"  time="0"  ]
The Hero recovered 50 HP!
[elsif  exp="tf.check==2"  ]
The Demon Lord is already at maximum HP.
[endif  ]
[eval  exp="tf.check=0"  ]
[eval  exp="f.braveLeaf=f.braveLeaf-1"  ]
[p  ]
[cm  ]
[jump  storage="battle.ks"  target="*counter_arcenemy"  ]
*brave_ether
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
[playse  storage="12_b_034.ogg"  loop="false"  ]
The Hero used an 「Ether」!
[r  ]
[p  ]
[if  exp="tf.check==1"  ]
[eval  exp="f.braveMagicPoint=f.braveMagicPoint+50"  ]
[freeimage  layer="3"  ]
[brave_status  ]
The Hero recovered 50 MP!
[p  ]
[elsif  exp="tf.check==2"  ]
[freeimage  layer="1"  ]
[eval  exp="f.deamonMagicPoint=f.deamonMagicPoint+50"  ]
The Demon Lord recovered 50 MP!
[p  ]
[endif  ]
[eval  exp="tf.check=0"  ]
[eval  exp="f.braveEther=f.braveEther-1"  ]
[cm  ]
[jump  storage="battle.ks"  target="*counter_arcenemy"  ]
*brave_diary
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[freeimage  layer="2"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[freeimage  layer="0"  ]
[layopt  layer="message0"  visible="true"  ]
The Hero read 「The Hero’s Journal」!
[p  ]
“Waaahahahaha!!!
[l  ]
[r  ]
It’s me! I’m the legendary Hero!”
[p  ]
“I’m the only one who can beat the Demon Lord!
[l  ]
[r  ]
But man, this apprenticeship, so much training…
[l  ]
[r  ]
Forget it!”
[p  ]
“Me and my buddy are just gonna head over
[l  ]
[r  ]
to his castle and get it over with!
[l  ]
[r  ]
We’re still level 1, but…”
[p  ]
“…Meh, it’ll work out somehow!”
[l  ]
[r  ]
--Hero
[p  ]
[jump  storage="battle.ks"  target="*counter_arcenemy"  ]
*brave_letter
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
The Hero read「The Master’s Letter」!
[p  ]
“Hero…
[l  ]
[r  ]
If y’got just a bit o’ MP, and y’blow it all
[l  ]
[r  ]
on the biggest spell y’can muster…”
[p  ]
“y’just get into more trouble…”
[l  ]
[r  ]
--Your beloved teacher.
[p  ]
[jump  storage="battle.ks"  target="*counter_arcenemy"  ]
*brave_dummy
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
The Hero read the「Teen Mage」Spell Guide Special Issue!
[p  ]
This month’s hot spells for cool kids!
[p  ]
・Fire – Great for starting campfires, just don’t stand too close! (30MP)
[l  ]
[r  ]
・Blizzard – Try this on bananas for a quick and easy frozen treat! (30MP)
[l  ]
[r  ]
・Change – Trade bodies and see what it’s like in someone else’s shoes! (30MP)
[p  ]
・Hellfire – Never use unsupervised, you could burn down your house! (50MP)
[l  ]
[r  ]
・Ice Beam – Don’t let any fingers (or toes) get caught in the blast, they might freeze off! (50MP)
[p  ]
・Time Leap – Jump into the past and surprise your friends! (100MP)
[l  ]
[r  ]
・Psycho Jack – Put a stop to bullies by controlling their minds! (100MP)
[l  ]
[r  ]
・Holy – Purify even the darkest of Demon Lords (may require some cleanup afterwards). (100MP)
[p  ]
[jump  storage="battle.ks"  target="*counter_arcenemy"  ]
*brave_book
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
The Hero read 「The Basics of Brawling」.
[p  ]
“The Basics of Brawlin’…
[l  ]
[r  ]
If yeh only remember one thing, make it this:”
[p  ]
“Strike first and strike true!
[l  ]
[r  ]
If yeh can strike the enemy while’e’s gettin’ ready,”
[l  ]
[r  ]
“yer strike will cut deeper than his.”
[p  ]
“When your enemy is chattin’,
[l  ]
[r  ]
that’s yer chance t’strike with all yer might!”
[l  ]
[r  ]
--Your beloved teacher.
[p  ]
[jump  storage="battle.ks"  target="*counter_arcenemy"  ]
*arcenemy_tool
[arcenemy_reset_window  ]
[arcenmy_action_command  ]
[wait  time="50"  ]
[arcenemy_tool_command  ]
[s  ]
*arcenemy_select_tool
[arcenemy_reset_window  ]
[arcenmy_action_command  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="473"  left="295"  storage="arcenemy/2_battle/2_Window/sub_window.png"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="476"  left="745"  storage="arcenemy/2_battle/9_SelectTool/select_tool_window.png"  ]
[button  name="command1"  graphic="9_SelectTool/select_tool_arrow.png"  enterimg="9_SelectTool/select_tool_arrow_cursor.png"  clickse="01_b_008.ogg"  target="*arcenemy_select_tool2"  x="810"  y="450"  ]
[glink  clickse="02_b_006.ogg"  target="*arcenemy_use"  exp="tf.check=1"  x="750"  y="510"  text="Demon&nbsp;Lord"  ]
[wait  time="50"  ]
[s  ]
*arcenemy_select_tool2
[arcenemy_reset_window  ]
[arcenmy_action_command  ]
[wait  time="50"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="473"  left="295"  storage="arcenemy/2_battle/2_Window/sub_window.png"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="476"  left="296"  storage="arcenemy/2_battle/9_SelectTool/select_cheage.png"  ]
[button  name="command1"  graphic="9_SelectTool/select_tool_arrow.png"  enterimg="9_SelectTool/select_tool_arrow_cursor.png"  clickse="01_b_008.ogg"  target="*arcenemy_select_tool"  x="330"  y="450"  ]
[glink  clickse="02_b_006.ogg"  name="command1"  text="Hero&nbsp;(single-target)"  target="*arcenemy_use"  exp="tf.check=2"  x="320"  y="490"  ]
[wait  time="50"  ]
[s  ]
*arcenemy_use
[freeimage  layer="1"  ]
[if  exp="tf.arcenemy_tool==1"  ]
[eval  exp="tf.arcenemy_tool=0"  ]
[jump  target="*arcenemy_leaf"  ]
[elsif  exp="tf.arcenemy_tool==2"  ]
[eval  exp="tf.arcenemy_tool=0"  ]
[jump  target="*arcenemy_ether"  ]
[endif  ]
*arcenemy_leaf
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
[playse  storage="12_b_034.ogg"  loop="false"  ]
The Demon Lord used 「Medicine」!
[r  ]
[if  exp="tf.check==1"  ]
The Demon Lord is already at maximum HP.
[r  ]
[p  ]
[elsif  exp="tf.check==2"  ]
The Hero recovered 50 HP!
[r  ]
[p  ]
[endif  ]
[eval  exp="tf.check=0"  ]
[cm  ]
[eval  exp="f.daemonLeaf=f.daemonLeaf-1"  ]
[jump  storage="battle.ks"  target="*counter_brave"  ]
*arcenemy_ether
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
[eval  exp="f.daemonEther=f.daemonEther-1"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[playse  storage="12_b_034.ogg"  loop="false"  ]
The Demon Lord used an 「Ether」!
[r  ]
[if  exp="tf.check==1"  ]
[freeimage  layer="3"  ]
[eval  exp="f.deamonMagicPoint=f.deamonMagicPoint+50"  ]
The Demon Lord recovered 50 MP!
[r  ]
[p  ]
[arcenmy_status  ]
[elsif  exp="tf.check==2"  ]
The Hero recovered 50 MP!
[r  ]
[p  ]
[eval  exp="f.braveMagicPoint=f.braveMagicPoint+50"  ]
[endif  ]
[eval  exp="tf.check=0"  ]
[cm  ]
[jump  storage="battle.ks"  target="*counter_brave"  ]
*arcenemy_diary
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[freeimage  layer="0"  ]
[layopt  layer="message0"  visible="true"  ]
“My only weakness
[l  ]
[r  ]
is to the magic of light.”
[p  ]
“It would appear that this magic
[l  ]
[r  ]
can only be used by he who possesses
[l  ]
[r  ]
both the body and mind of a hero!”
[p  ]
“The Hero and his friends know this not.
[l  ]
[r  ]
Therefore I must not allow them to learn of it!”
[l  ]
[r  ]
--The Demon Lord
[p  ]
[jump  storage="battle.ks"  target="*counter_brave"  ]
*arcenemy_letter
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
“Our deepest apologies, O great Demon Lord!
[l  ]
[r  ]
We, the Four Heavenly Kings, have been defeated.”
[p  ]
“As you’ve likely noticed, The Hero is an utter fool…”
[p  ]
“But you may not have realized that his friend,
[l  ]
[r  ]
「
[emb  exp="f.Player"  ]
」 
[l  ]
[r  ]
is a great wizard –”
[p  ]
“able to cast even the mighty「Psycho Jack!」”
[p  ]
“He was able to take control of our very will,
[l  ]
[r  ]
and control us as though we were simple puppets.”
[p  ]
“If he were to manage to control you, O Lord,
[l  ]
[r  ]
it would be an unimaginable disaster!”
[p  ]
“Please, be careful… May you fare better than we…”
[l  ]
[r  ]
--The Four Heavenly Kings
[p  ]
“P.S.:
[l  ]
[r  ]
We sincerely hope that you aren’t already
[l  ]
[r  ]
being controlled as you read this message…”
[p  ]
[jump  storage="battle.ks"  target="*counter_brave"  ]
*arcenemy_dummy
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[freeimage  layer="0"  ]
[layopt  layer="message0"  visible="true"  ]
The Demon Lord read 「The Three Tenets」!
[p  ]
“There are three tenets a Great Demon Lord must follow:”
[p  ]
“・1. A Great Demon Lord never flees.
[l  ]
[r  ]
Running from a fight is not befitting of one
[l  ]
[r  ]
so strong and noble, thus we shall not do it.”
[p  ]
“・2. A Great Demon Lord gives no quarter.
[l  ]
[r  ]
We shall not use any tools on our opponents’ behalf;
[l  ]
[r  ]
helping them to recover HP or MP is out of the question.”
[p  ]
“・3. A Great Demon Lord does not run out of MP.
[l  ]
[r  ]
Being unable to cast spells
[l  ]
[r  ]
is an unconscionable indignity.”
[p  ]
“To prevent such an unthinkable occurrence,
[l  ]
[r  ]
we shall never begin a fight without *two* Ethers.”
[p  ]
[jump  storage="battle.ks"  target="*counter_brave"  ]
