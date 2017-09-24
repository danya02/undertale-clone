0x000000:
    if !(== self.move 1s) goto 0x0000D8
0x000014:
    if !(== self.axetype 0s) goto 0x000040
0x000028:
    self.hspeed = 1.8d
    goto 0x000054
0x000040:
    self.hspeed = -1.8d
0x000054:
    self.vspeed = -3.8d
    if !(== self.hard 1s) goto 0x000090
0x00007C:
    self.vspeed = -3.4d
0x000090:
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x0000B8
0x0000A4:
    self.vspeed = -3.1d
0x0000B8:
    self.gravity_direction = 270s
    self.gravity = 0.2d
0x0000D8:
    if !(== self.move 0s) goto 0x000134
0x0000EC:
    self.hspeed = 0s
    stog.alarm[1s] = (+ 10s (floor[]:int32 (random[]:int32 (var 14s))))
    self.move = 1s
0x000134:
    self.visible = 1s
0x000140:
    exit
