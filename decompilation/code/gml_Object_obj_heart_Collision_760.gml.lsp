0x000000:
    if !(== self.ignore_border 0s) goto 0x000100
0x000014:
    if !(== self.movement 11s) goto 0x00009C
0x000028:
    push -5s
    self.x = (- 1s:idealborder 16s)
    call (event_user[]:int32 (var 7s))
    if !(> self.hspeed 0s) goto 0x00007C
0x000070:
    self.hspeed = 0s
0x00007C:
    if !(== self.movement 11s) goto 0x00009C
0x000090:
    self.jumpstage = 1s
0x00009C:
    self.x = (- other.x self.sprite_width)
    if !(== self.confuse 1s) goto 0x0000E0
0x0000CC:
    push (!= 154.runaway 1s)
    goto 0x0000E4
0x0000E0:
    push 0s
0x0000E4:
    if !pop goto 0x000100
0x0000E8:
    self.x = (- other.x 8s)
0x000100:
    exit
