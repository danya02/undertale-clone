0x000000:
    if !(== global.interact 0s) goto 0x00016C
0x000014:
    call (snd_play[]:int32 (var 104s))
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Ring..\\E0.\\TT /"
    stog.msg[1s] = "\\F1 %"
    stog.msg[2s] = "* Hello?/"
    stog.msg[3s] = "\\E1* You do not have&  any allergies^1, do&  you?/"
    stog.msg[4s] = "* Huh^1?&* Why am I asking?/"
    stog.msg[5s] = "\\E0* No reason..^1.&* No reason at all./"
    stog.msg[6s] = "\\TS \\F0 \\T0 %"
    stog.msg[7s] = "* Click.../%%"
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 0s) (var 146s))
    global.interact = 1s
    call (script_execute[]:int32 (var 202s) (var 86s))
0x00016C:
    exit
