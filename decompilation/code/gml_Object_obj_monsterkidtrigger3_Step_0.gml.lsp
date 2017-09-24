0x000000:
    if !(== self.con 1s) goto 0x0002D8
0x000014:
    global.facechoice = 0s
    global.typer = 5s
    global.msc = 0s
    push -5s
    if !(== 90s:flag 3s) goto 0x00006C
0x000054:
    stog.msg[0s] = "* Yo.../%%"
0x00006C:
    push -5s
    if !(== 90s:flag 2s) goto 0x00011C
0x000088:
    push -5s
    if !(== 85s:flag 0s) goto 0x0000E8
0x0000A4:
    stog.msg[0s] = "* Yo..^1./"
    stog.msg[1s] = "* Where's the umbrella...^1?&* Ha... ha.../%%"
    stog.flag[90s] = 3s
0x0000E8:
    push -5s
    if !(== 85s:flag 1s) goto 0x00011C
0x000104:
    stog.msg[0s] = "* Yo^1!&* Ready yet?/%%"
0x00011C:
    push -5s
    if !(== 90s:flag 1s) goto 0x0001CC
0x000138:
    push -5s
    if !(== 85s:flag 0s) goto 0x00016C
0x000154:
    stog.msg[0s] = "* Yo^1!&* Ready yet?/%%"
0x00016C:
    push -5s
    if !(== 85s:flag 1s) goto 0x0001CC
0x000188:
    stog.msg[0s] = "* Yo^1!&* You got us an umbrella?/"
    stog.msg[1s] = "* You're the best!/%%"
    stog.flag[90s] = 2s
0x0001CC:
    push -5s
    if !(== 90s:flag 0s) goto 0x0002A8
0x0001E8:
    push -5s
    if !(== 85s:flag 1s) goto 0x000248
0x000204:
    stog.msg[0s] = "* Yo^1, you got an umbrella?/"
    stog.msg[1s] = "* Awesome!/%%"
    stog.flag[90s] = 2s
0x000248:
    push -5s
    if !(== 85s:flag 0s) goto 0x0002A8
0x000264:
    stog.msg[0s] = "* Yo^1! You can't hold an&  umbrella either?/"
    stog.msg[1s] = "* If you're walking anyway^1,&  I guess I'll go with you^1,&  haha.../%%"
    stog.flag[90s] = 1s
0x0002A8:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 2s
0x0002D8:
    if !(== self.con 2s) goto 0x000308
0x0002EC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00030C
0x000308:
    push 0s
0x00030C:
    if !pop goto 0x00036C
0x000310:
    pushenv (int32 self.mkid) 0x00033C
0x000320:
    self.follow = 1s
    self.sprite_index = self.dsprite
0x00033C:
    popenv 0x000320
0x000340:
    global.interact = 1s
    self.con = 3s
    stog.alarm[4s] = 30s
0x00036C:
    if !(== self.con 4s) goto 0x000470
0x000380:
    if !(bool (instance_exists[]:int32 self.mkid)) goto 0x000470
0x000398:
    if !(== (int32 self.mkid):follow 3s) goto 0x000470
0x0003B8:
    global.msc = 0s
    pushenv (int32 self.mkid) 0x0003E4
0x0003D4:
    self.sprite_index = self.rtsprite
0x0003E4:
    popenv 0x0003D4
0x0003E8:
    pushenv (int32 self.mkid) 0x00040C
0x0003F8:
    self.image_speed = 0.25d
0x00040C:
    popenv 0x0003F8
0x000410:
    stog.msg[0s] = "* Let's go!/%%"
    global.typer = 5s
    global.interact = 1s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 5s
0x000470:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0004A0
0x00048C:
    push (== self.con 5s)
    goto 0x0004A4
0x0004A0:
    push 0s
0x0004A4:
    if !pop goto 0x0004F0
0x0004A8:
    self.con = 6s
    global.interact = 0s
    pushenv (int32 self.mkid) 0x0004E0
0x0004D0:
    self.sprite_index = self.rsprite
0x0004E0:
    popenv 0x0004D0
0x0004E4:
    self.x = 60s
0x0004F0:
    if !(== self.con 7s) goto 0x000520
0x000504:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000524
0x000520:
    push 0s
0x000524:
    if !pop goto 0x0005C0
0x000528:
    self.con = 8s
    push 0s
    stog.follow* = (int32 self.mkid)
    push 8s
    stog.hspeed* = (int32 self.mkid)
    push (int32 self.mkid):rsprite
    stog.sprite_index* = (int32 self.mkid)
    push 0.5d
    stog.image_speed* = (int32 self.mkid)
    stog.alarm[4s] = 30s
0x0005C0:
    if !(== self.con 9s) goto 0x00064C
0x0005D4:
    pushenv (int32 self.mkid) 0x0005F0
0x0005E4:
    call (instance_destroy[]:int32 )
0x0005F0:
    popenv 0x0005E4
0x0005F4:
    global.interact = 0s
    self.t = (instance_create[]:int32 (var 1122s) self.ystart self.xstart)
    push 2s
    stog.numero* = (int32 self.t)
    call (instance_destroy[]:int32 )
0x00064C:
    exit
