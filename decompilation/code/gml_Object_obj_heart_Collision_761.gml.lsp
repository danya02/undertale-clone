0x000000:
    if !(== self.ignore_border 0s) goto 0x0000B8
0x000014:
    self.y = (- other.y self.sprite_height)
    if !(== self.movement 2s) goto 0x000070
0x000044:
    call (event_user[]:int32 (var 7s))
    self.jumpstage = 1s
    self.vspeed = 0s
0x000070:
    if !(== self.confuse 1s) goto 0x000098
0x000084:
    push (!= 154.runaway 1s)
    goto 0x00009C
0x000098:
    push 0s
0x00009C:
    if !pop goto 0x0000B8
0x0000A0:
    self.y = (- other.y 8s)
0x0000B8:
    exit
