0x000000:
    if !(== self.ignore_border 0s) goto 0x000140
0x000014:
    if !(== self.movement 2s) goto 0x000048
0x000028:
    if !(< self.vspeed 0s) goto 0x000048
0x00003C:
    self.vspeed = 0s
0x000048:
    if !(== self.movement 12s) goto 0x0000D0
0x00005C:
    push -5s
    self.y = (+ 2s:idealborder 4s)
    call (event_user[]:int32 (var 7s))
    if !(< self.vspeed 0s) goto 0x0000B0
0x0000A4:
    self.vspeed = 0s
0x0000B0:
    if !(== self.movement 12s) goto 0x0000D0
0x0000C4:
    self.jumpstage = 1s
0x0000D0:
    self.y = (+ other.y other.sprite_height)
    if !(== self.confuse 1s) goto 0x000114
0x000100:
    push (!= 154.runaway 1s)
    goto 0x000118
0x000114:
    push 0s
0x000118:
    if !pop goto 0x000140
0x00011C:
    self.y = (+ (+ other.y other.sprite_height) 8s)
0x000140:
    exit
