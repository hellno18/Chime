[macro name=menu] ; メニューマクロ
	[current layer=message1 page=fore]
	[position layer=message1 opacity=0]
		[font color=0x000000]
		[nowait]
		[locate x=350 y=150][button graphic="startbutton.png"  storage="level.ks" target=*プレイ]
		[locate x=340 y=300][button graphic="creditbutton.png" storage="credit.ks" target=*credit]
		;1 :[link storage="level.ks" target=*プレイ]プレイ[endlink][r]
		;2 :[link storage="option.ks" target=*オプション]オプション[endlink][r]
		;[endlink]
		[endnowait]
		[resetfont]
	;[current layer=message1 page=fore]
[endmacro]

[macro name=ユキ]
[layopt layer=message0 visible=true]
	[current layer=message0 page=fore]
		[font color=0xFF0000][nowait]ユキ[endnowait][resetfont]
	[current layer=message1 page=fore]
[endmacro]

[macro name=怜奈]
[layopt layer=message0 visible=true]
	[current layer=message0 page=fore]
		[font color=0xFF0000][nowait][hiragana text=れな]怜奈
		[endnowait][resetfont]
	[current layer=message1 page=fore]
[endmacro]

[macro name=薫]
[layopt layer=message0 visible=true]
	[current layer=message0 page=fore]
		[font color=0xFF0000][nowait][hiragana text=かおる]薫
		[endnowait][resetfont]
	[current layer=message1 page=fore]
[endmacro]

[macro name=hiragana]
	[font rubysize=15]
	[ruby text=%text]
[endmacro]

[macro name=positionfull]
	[layopt layer=message0 visible=false]
	[position
	  layer=message1 
	  page=fore
	  opacity=100 
		visible=true
		frame=""
		left=0 
		top=0
		width=1136 
		height=640
		margint="100" 
		marginl="80" 
		marginr="150" 
		marginb="100"
	]
[endmacro]

[macro name=positionchat]
	[layopt layer=message1 left=50 top=420]
	[position
	  layer=message0 
	  page=fore 
		visible=false  
		left=50 
		top=360
		frame="nameframe.png"
		width=150 
		height=60
		margint=0
		]
	[position 
		layer=message1 
		visible=true
		width=1020 
		height=200
		frame="windowframe.png"
		margint="0" 
		marginl="20" 
		marginr="0" 
		marginb="0"
		]
[endmacro]

[macro name=positionchatHorror]
	[layopt layer=message1 left=50 top=420]
	[position
	  layer=message0 
	  page=fore 
		visible=false  
		left=50 
		top=360
		frame="horrornameframe.png"
		width=150 
		height=60
		margint=0
		]
	[position 
		layer=message1 
		width=1020
		visible=true		
		height=200
		frame="horrorwindowframe.png"
		margint="0" 
		marginl="20" 
		marginr="0" 
		marginb="0"
		]
[endmacro]


[macro name=quakinglow]
	[quake time=200 hmax=10 vmax=10]
[endmacro]

[macro name=quakingmedium]
	[quake time=500 hmax=10 vmax=10]
[endmacro]

[macro name=quakinghigh]
	[quake time=500 hmax=10 vmax=10]
[endmacro]

[macro name=changebackground]
	[backlay]
	[image storage=%storage1 width=%width|1136 height=%height|640 layer=base page=back pos=center]
	[trans time=%time1 method=crossfade]
	[wt]
[endmacro]


[macro name=showghost]
	[backlay]
	[image storage=%storage2 layer=2 page=back top=%top left=%left]
	[trans time=%time2 method=crossfade]
	[wt]
[endmacro]

[macro name=characterchange]
	[backlay]
	[image storage=%storage layer=%layer|0 left=%left|50 top=%top|100 page=back]
	[trans time=%time|500 method=crossfade]
	[wt]
[endmacro]

[macro name=changebgm]
	[xchgbgm storage=%storage volume=%volume|50 time=%time|500]
[endmacro]
[macro name=health]
	[if o2_exp="health==3"]
		[image storage="health3.png" layer=0 left=0 top=0]
	[endif]
	[if o2_exp="health==2"]
		[characterchange storage="health2.png" layer=0 left=0 top=0 time=500]
	[endif]
	[if o2_exp="health==1"]
		[characterchange storage="health1.png" layer=0 left=0 top=0 time=500]
	[endif]
	[if o2_exp="health==0"]
		[characterchange storage="health0.png" layer=0 left=0 top=0 time=500]
	[endif]
[endmacro]

[macro name=x]
[p][cm]
[endmacro]

[macro name=y]
	[l][r]
[endmacro]

[jump storage="title.ks"]
