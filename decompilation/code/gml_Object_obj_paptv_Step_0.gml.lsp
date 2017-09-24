0x000000:
    self.buffer = (- self.buffer 1s)
    if !(== self.myinteract 1s) goto 0x000040
0x00002C:
    push (> self.buffer 0s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000054
0x000048:
    self.myinteract = 0s
0x000054:
    if !(== self.myinteract 1s) goto 0x000094
0x000068:
    global.interact = 1s
    stog.alarm[0s] = 1s
    self.myinteract = 2s
0x000094:
    if !(== self.myinteract 0s) goto 0x0000B4
0x0000A8:
    self.sprite_index = 1631s
0x0000B4:
    if !(== self.conversation 2s) goto 0x00012C
0x0000C8:
    self.image_speed = 1s
    self.sprite_index = 1632s
    call (caster_loop[]:int32 (var 1s) (var 0.75d) self.tv)
    self.conversation = 3s
    stog.alarm[2s] = 10s
0x00012C:
    if !(== self.conversation 4s) goto 0x000284
0x000140:
    if !(bool (instance_exists[]:int32 (var 1025s))) goto 0x00020C
0x000158:
    call (scr_papface[]:int32 (var 0s) (var 0s))
    stog.msg[1s] = "\\E0OOH, IT'S MY&FAVORITE&GAME-SHOW!/"
    stog.msg[2s] = "\\TS \\F0 \\T0 %"
    stog.msg[3s] = "* (It says \"STAY TUNED FOR&  A NEW PROGRAM - MTT.\")/"
    call (scr_papface[]:int32 (var 1s) (var 4s))
    stog.msg[5s] = "\\E1WHAT!!^1!&IT'S USUALLY&BETTER THAN THIS!/"
    stog.msg[6s] = "\\E2THIS IS JUST&A BAD EPISODE!!^1!&DON'T JUDGE ME!!!/%%"
    goto 0x000224
0x00020C:
    stog.msg[0s] = "* (It says \"STAY TUNED FOR&  A NEW PROGRAM - MTT.\")/%%"
0x000224:
    if !(> self.read 1s) goto 0x000250
0x000238:
    stog.msg[0s] = "* (It says \"STAY TUNED FOR&  A NEW PROGRAM - MTT.\")/%%"
0x000250:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 5s
0x000284:
    if !(== self.conversation 5s) goto 0x0002B4
0x000298:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0002B8
0x0002B4:
    push 0s
0x0002B8:
    if !pop goto 0x000360
0x0002BC:
    self.read = (+ self.read 1s)
    self.conversation = 0s
    self.myinteract = 0s
    global.interact = 0s
    if !(<= self.buffer 0s) goto 0x000320
0x00030C:
    call (snd_play[]:int32 (var 92s))
0x000320:
    self.buffer = 5s
    self.sprite_index = 1631s
    call (caster_stop[]:int32 self.tv)
    call (caster_resume[]:int32 global.currentsong)
0x000360:
    exit
