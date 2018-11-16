*credit
[positionfull]
[link storage="credit.ks" target=*soundup]音上がる[endlink][r]
[link storage="credit.ks" target=*sounddown]音下がる[endlink][s]

*soundup
[eval o2_exp="sound='up'"]
[jump storage="first.ks" target=*fromcredit]

*sounddown
[eval o2_exp="sound='down'"]
[jump storage="first.ks" target=*fromcredit]
