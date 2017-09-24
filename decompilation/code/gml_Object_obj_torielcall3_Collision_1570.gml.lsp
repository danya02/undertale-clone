0x000000:
    if !(== global.interact 0s) goto 0x0001D0
0x000014:
    call (snd_play[]:int32 (var 104s))
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Ring..\\E0.\\TT /"
    stog.msg[1s] = "\\F1 %"
    stog.msg[2s] = "* Hello?&* This is TORIEL./"
    push -5s
    if !(== 46s:flag 0s) goto 0x0000C8
0x0000B0:
    stog.msg[3s] = "\\E1* You do not DISLIKE&  butterscotch^1, do you?/"
0x0000C8:
    push -5s
    if !(== 46s:flag 1s) goto 0x0000FC
0x0000E4:
    stog.msg[3s] = "\\E1* You do not DISLIKE&  cinnamon^1, do you?/"
0x0000FC:
    stog.msg[4s] = "* I know what your&  preference is^1, but.../"
    stog.msg[5s] = "* Would you turn up your&  nose if you found&  it on your plate?/"
    stog.msg[6s] = "* Right^1, right^1, I&  understand./"
    stog.msg[7s] = "\\E0* Thank you for being&  patient^1, by the way./"
    stog.msg[8s] = "\\TS \\F0 \\T0 %"
    stog.msg[9s] = "* Click.../%%"
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 0s) (var 146s))
    global.interact = 1s
0x0001D0:
    exit
