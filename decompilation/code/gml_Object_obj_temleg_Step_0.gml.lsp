0x000000:
    if !(== self.control 1s) goto 0x000130
0x000014:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x00004C
0x00002C:
    self.hspeed = (+ self.hspeed 0.2d)
0x00004C:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x000084
0x000064:
    self.hspeed = (- self.hspeed 0.2d)
0x000084:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x0000B0
0x00009C:
    push (> self.height 4s)
    goto 0x0000B4
0x0000B0:
    push 0s
0x0000B4:
    if !pop goto 0x0000E8
0x0000B8:
    self.height = (- self.height 1s)
    self.y = (+ self.y 1s)
0x0000E8:
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x000130
0x000100:
    self.height = (+ self.height 1s)
    self.y = (- self.y 1s)
0x000130:
    self.siner = (- self.siner self.hspeed)
    if !(< global.turntimer 1s) goto 0x00016C
0x000160:
    call (instance_destroy[]:int32 )
0x00016C:
    exit
