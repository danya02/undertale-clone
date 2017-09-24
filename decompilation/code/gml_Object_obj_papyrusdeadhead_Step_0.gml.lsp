0x000000:
    if !(== self.c 1s) goto 0x000060
0x000014:
    self.hspeed = 1.5d
    self.gravity = 0.2d
    self.gravity_direction = 270s
    self.vspeed = -1s
    self.c = 2s
0x000060:
    if !(== self.c 2s) goto 0x000094
0x000074:
    push (> self.y (+ self.ystart 70s))
    goto 0x000098
0x000094:
    push 0s
0x000098:
    if !pop goto 0x0000CC
0x00009C:
    self.hspeed = 0s
    self.vspeed = 0s
    self.gravity = 0s
    self.c = 3s
0x0000CC:
    if !(== self.c 5s) goto 0x000100
0x0000E0:
    self.gravity = 0.2d
    self.c = 6s
0x000100:
    if !(== self.c 6s) goto 0x000134
0x000114:
    push (> self.y (+ self.ystart 135s))
    goto 0x000138
0x000134:
    push 0s
0x000138:
    if !pop goto 0x000154
0x00013C:
    self.vspeed = 0s
    self.gravity = 0s
0x000154:
    if !(== self.c 7s) goto 0x000218
0x000168:
    self.ddd = (instance_create[]:int32 (var 155s) self.y self.x)
    pushenv (int32 self.ddd) 0x0001B4
0x0001A0:
    call (scr_newvapordata[]:int32 (var 10s))
0x0001B4:
    popenv 0x0001A0
0x0001B8:
    push self.sprite_index
    stog.sprite_index* = (int32 self.ddd)
    push self.sprite_height
    stog.ht* = (int32 self.ddd)
    push self.sprite_width
    stog.wd* = (int32 self.ddd)
    call (instance_destroy[]:int32 )
0x000218:
    exit
