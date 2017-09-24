0x000000:
    if !(== self.con 1s) goto 0x000050
0x000014:
    self.con = 0.1d
    stog.alarm[4s] = 30s
    call (snd_play[]:int32 (var 104s))
0x000050:
    if !(== self.con 1.1d) goto 0x000100
0x00006C:
    global.facechoice = 0s
    call (caster_pause[]:int32 global.currentsong)
    call (snd_play[]:int32 (var 104s))
    global.msc = 0s
    global.typer = 5s
    stog.msg[0s] = "* (Ring... ring...)/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 2s
0x000100:
    if !(== self.con 2s) goto 0x000130
0x000114:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000134
0x000130:
    push 0s
0x000134:
    if !pop goto 0x000274
0x000138:
    if !(== self.type 1s) goto 0x000164
0x00014C:
    global.typer = 17s
    global.msc = 900s
0x000164:
    if !(== self.type 2s) goto 0x000244
0x000178:
    global.typer = 47s
    stog.msg[0s] = "* U-uhhh..^1.&* (Oh my god^1, help...)/"
    stog.msg[1s] = "* I'd like to order a..^1.&* Um..^1.&* A pizza...?/"
    stog.msg[2s] = "* With^1, uhh..^1.&* The toppings are^1, uh.../"
    stog.msg[3s] = "* I have them copied^1, I'll&  just paste them to you./"
    stog.msg[4s] = "\\T0 %"
    stog.msg[5s] = "* (Your phone is too old to&  receive texts...)/"
    stog.msg[6s] = "* (It reads out loud^1, character-&  by-character^1, an ASCII art&  of an anime catgirl.)/"
    stog.msg[7s] = "\\TA* .../%%"
0x000244:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 3s
0x000274:
    if !(== self.con 3s) goto 0x0002A4
0x000288:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0002A8
0x0002A4:
    push 0s
0x0002A8:
    if !pop goto 0x00030C
0x0002AC:
    global.msc = 0s
    global.typer = 5s
    stog.msg[0s] = "* (Click...)/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 4s
0x00030C:
    if !(== self.con 4s) goto 0x00033C
0x000320:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000340
0x00033C:
    push 0s
0x000340:
    if !pop goto 0x000390
0x000344:
    call (caster_resume[]:int32 global.currentsong)
    self.con = 5s
    stog.flag[277s] = 1s
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x000390:
    exit
