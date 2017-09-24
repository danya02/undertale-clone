0x000000:
    if !(== global.interact 0s) goto 0x0002D4
0x000014:
    call (snd_play[]:int32 (var 104s))
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    push -5s
    if !(== 37s:flag 0s) goto 0x000144
0x000068:
    stog.msg[0s] = "* Ring..\\E0.\\TT /"
    stog.msg[1s] = "\\F1 %"
    stog.msg[2s] = "* Hello?&* This is TORIEL./"
    stog.msg[3s] = "\\E1* You have not left&  the room^1, have you?/"
    stog.msg[4s] = "* There are a few puzzles&  ahead that I have&  yet to explain./"
    stog.msg[5s] = "* It would be dangerous&  to try to solve them&  yourself./"
    stog.msg[6s] = "* Be good^1, alright?/"
    stog.msg[7s] = "\\TS \\F0 \\T0 %"
    stog.msg[8s] = "* Click.../%%"
    goto 0x000290
0x000144:
    stog.msg[0s] = "* Ring..\\E1.\\TT /"
    stog.msg[1s] = "\\F1 %"
    stog.msg[2s] = "* Hello^1? Hello^1?&* This is TORIEL./"
    stog.msg[3s] = "* My apologies^1.&* A strange dog&  kidnapped my phone./"
    stog.msg[4s] = "* So if you called^1, I&  could not have helped&  you./"
    stog.msg[5s] = "\\E0* However^1, I have&  recovered it./"
    stog.msg[6s] = "* And you are still in&  that room^1, are you not?/"
    stog.msg[7s] = "* What a good child you&  are./"
    stog.msg[8s] = "\\E1* There are a few puzzles&  ahead that I have&  yet to explain./"
    stog.msg[9s] = "* It would be dangerous&  to try to solve them&  yourself./"
    stog.msg[10s] = "\\E1* Be good^1, alright?/"
    stog.msg[11s] = "\\TS \\F0 \\T0 %"
    stog.msg[12s] = "* Click.../%%"
    stog.flag[37s] = 2s
0x000290:
    call (script_execute[]:int32 (var 0s) (var 0s) (var "x") (var 0s) (var 146s))
    global.interact = 1s
0x0002D4:
    exit
