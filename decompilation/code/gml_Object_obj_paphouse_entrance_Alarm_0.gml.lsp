0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    push -5s
    if !(== 88s:flag 0s) goto 0x000070
0x000058:
    stog.msg[0s] = "* (It's locked.)/%%"
0x000070:
    push -5s
    if !(== 88s:flag 1s) goto 0x000140
0x00008C:
    call (scr_papface[]:int32 (var 0s) (var 0s))
    push -5s
    if !(== 66s:flag 1s) goto 0x0000DC
0x0000C4:
    stog.msg[1s] = "WOW^1, YOU'RE SO&EAGER TO DATE&ME.../"
0x0000DC:
    push -5s
    if !(== 66s:flag 0s) goto 0x000110
0x0000F8:
    stog.msg[1s] = "WOW^1, YOU'RE SO&EAGER TO HANG&OUT.../"
0x000110:
    stog.msg[2s] = "YOU'RE TRYING TO&GO INTO MY HOUSE&WITHOUT ME!/"
    stog.msg[3s] = "THAT'S REALLY&WEIRD!!!/%%"
0x000140:
    push -5s
    if !(> 88s:flag 1s) goto 0x000174
0x00015C:
    stog.msg[0s] = "* (It's unlocked.)/%%"
0x000174:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x00019C:
    exit
