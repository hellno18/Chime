﻿[eval o2_exp="health=health-1"]
[eval o2_exp="tsukamata=tsukamata+1"]
[eval o2_exp="isSummon=false"]
[if o2_exp="health<3&&health>0"]
[playse storage="kyaa" buf=0]
[eval o2_exp="bool=true"][endif]
[positionfull]
[health]
[changebackground
	storage1="classroom.png"
	time1=500
]
[if o2_exp="tsukamata==1"]
	[playse storage="se_maoudamashii_chime12" buf=2 loop=true]
	[seopt buf=2 volume=25 ]
[elsif o2_exp="tsukamata==2"]
	[playse storage="se_maoudamashii_chime12" buf=2 loop=true]
	[seopt buf=2 volume=50 ]
[elsif o2_exp="tsukamata==3"]
	[playse storage="se_maoudamashii_chime12" buf=2 loop=true]
	[seopt buf=2 volume=100]
[endif]



[showghost storage2="yureMedium.png" top=107 left=368 time2=500][move layer=2 page=fore time=300 path="(368,120,255),(368,107,255),(368,100,255),(368,107,255)"][wm]
;[showghost storage2="yureMedium.png" top=107 left=368 time2=500]
[showghost storage2="yureBig.png" top=107 left=368 time2=500]
[quakinglow]
[showghost storage2="yureBigChanged.png" top=107 left=368 time2=500]
[playse storage="broken" buf=1]
[playse storage="laugh" buf=1]
;[seopt buf=1 volume=100]
[seopt buf=1 volume=50]
[move layer=2 page=fore time=100 o2_path="(368,107,255,0,3),(3,68,107,255,0,0),(368,107,255,0,-3)(368,107,255,0,0)"][wm]
[showghost storage2="yureBigChangedRed.png" top=107 left=368 time2=500]
[eval o2_exp="isSummon=true"]

[if o2_exp="isSummon==true"]
[locate x=-50 y=350][button graphic="LeftArrow.png" target=*backtomenu][s]
[endif]

*backtomenu
[move layer=2 page=fore time=100 o2_path="(368,107,255,100)"][wm]
[image storage="yureBigChangedRed.png" layer=2 visible=false]
[eval o2_exp="isSummon=false"]
[stopse buf=2]
[cm]
[jump storage="level.ks" target=*restart1]