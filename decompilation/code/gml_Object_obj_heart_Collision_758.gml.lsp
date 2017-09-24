0x000000:
    if !(== self.ignore_border 0s) goto 0x00010C
0x000014:
    if !(== self.movement 13s) goto 0x000088
0x000028:
    push -5s
    self.x = (+ 0s:idealborder 4s)
    call (event_user[]:int32 (var 7s))
    if !(< self.hspeed 0s) goto 0x00007C
0x000070:
    self.hspeed = 0s
0x00007C:
    self.jumpstage = 1s
0x000088:
    if !(!= 154.runaway 1s) goto 0x0000B8
0x00009C:
    self.x = (+ other.x other.sprite_width)
0x0000B8:
    if !(== self.confuse 1s) goto 0x0000E0
0x0000CC:
    push (!= 154.runaway 1s)
    goto 0x0000E4
0x0000E0:
    push 0s
0x0000E4:
    if !pop goto 0x00010C
0x0000E8:
    self.x = (+ (+ other.x other.sprite_width) 8s)
0x00010C:
    exit
