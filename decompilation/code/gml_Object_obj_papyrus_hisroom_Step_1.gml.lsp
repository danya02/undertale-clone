0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== self.fun 0s) goto 0x0000B0
0x000048:
    if !(bool (instance_exists[]:int32 (var 775s))) goto 0x000074
0x000060:
    self.image_index = 775.image_index
    goto 0x0000B0
0x000074:
    if !(== self.speed 0s) goto 0x00009C
0x000088:
    push (== self.path_speed 0s)
    goto 0x0000A0
0x00009C:
    push 0s
0x0000A0:
    if !pop goto 0x0000B0
0x0000A4:
    self.image_index = 0s
0x0000B0:
    if !(== self.speed 0s) goto 0x0000D8
0x0000C4:
    call (scr_npc_watch[]:int32 (var 0s))
0x0000D8:
    if !(== self.intro 0s) goto 0x000124
0x0000EC:
    self.intro = 1s
    self.vspeed = -5s
    self.sprite_index = 1325s
    self.image_speed = 0.25d
0x000124:
    if !(== self.intro 1s) goto 0x00014C
0x000138:
    push (< self.y 110s)
    goto 0x000150
0x00014C:
    push 0s
0x000150:
    if !pop goto 0x000184
0x000154:
    self.intro = 2s
    self.vspeed = 0s
    self.hspeed = -5s
    self.sprite_index = 1330s
0x000184:
    if !(== self.intro 2s) goto 0x0001AC
0x000198:
    push (< self.x 150s)
    goto 0x0001B0
0x0001AC:
    push 0s
0x0001B0:
    if !pop goto 0x0001D8
0x0001B4:
    self.hspeed = 0s
    self.sprite_index = 1316s
    self.intro = 3s
0x0001D8:
    if !(== self.intro 4s) goto 0x000208
0x0001EC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00020C
0x000208:
    push 0s
0x00020C:
    if !pop goto 0x00024C
0x000210:
    call (instance_create[]:int32 (var 143s) (var 0s) (var 0s))
    global.interact = 1s
    self.intro = 5s
0x00024C:
    if !(== self.intro 5s) goto 0x00026C
0x000260:
    global.interact = 1s
0x00026C:
    exit
