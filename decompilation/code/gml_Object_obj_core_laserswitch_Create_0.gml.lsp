0x000000:
    self.myinteract = 0s
    self.con = 0s
    self.pcon = 0s
    if (> global.plot 180s) goto 0x000054
0x000038:
    push -5s
    push (== 7s:flag 1s)
    goto 0x000058
0x000054:
    push 1s
0x000058:
    if !pop goto 0x0000E0
0x00005C:
    self.meswitch = (scr_marker[]:int32 (var 1854s) self.y self.x)
    pushenv (int32 self.meswitch) 0x0000A4
0x000094:
    self.depth = 700000
0x0000A4:
    popenv 0x000094
0x0000A8:
    pushenv (int32 self.meswitch) 0x0000CC
0x0000B8:
    self.image_speed = 0.2d
0x0000CC:
    popenv 0x0000B8
0x0000D0:
    call (instance_destroy[]:int32 )
    exit
0x0000E0:
    if !(> global.plot 180s) goto 0x000110
0x0000F4:
    self.sprite_index = 1854s
    self.con = 99s
    goto 0x000174
0x000110:
    self.ff = (instance_create[]:int32 (var 1183s) (var 80s) (var 280s))
    push 5s
    stog.image_yscale* = (int32 self.ff)
    push 0s
    stog.basic* = (int32 self.ff)
    self.pcon = 40s
0x000174:
    self.image_speed = 0.25d
    self.fader = 0s
    self.remhp = global.hp
    if !(== self.room 192s) goto 0x0001C8
0x0001B8:
    self.depth = 700000
0x0001C8:
    exit
