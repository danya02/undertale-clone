0x000000:
    if !(== self.cl 4s) goto 0x000244
0x000014:
    if !(> self.vspeed 0s) goto 0x000040
0x000028:
    push (> self.y self.w_d)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x0000A0
0x000048:
    self.y = self.w_d
    if !(== self.cl 0s) goto 0x000088
0x00006C:
    self.direction = (+ self.direction 90s)
    goto 0x0000A0
0x000088:
    self.direction = (- self.direction 90s)
0x0000A0:
    if !(> self.hspeed 0s) goto 0x0000CC
0x0000B4:
    push (> self.x self.w_r)
    goto 0x0000D0
0x0000CC:
    push 0s
0x0000D0:
    if !pop goto 0x00012C
0x0000D4:
    self.x = self.w_r
    if !(== self.cl 0s) goto 0x000114
0x0000F8:
    self.direction = (+ self.direction 90s)
    goto 0x00012C
0x000114:
    self.direction = (- self.direction 90s)
0x00012C:
    if !(< self.vspeed 0s) goto 0x000158
0x000140:
    push (< self.y self.w_u)
    goto 0x00015C
0x000158:
    push 0s
0x00015C:
    if !pop goto 0x0001B8
0x000160:
    self.y = self.w_u
    if !(== self.cl 0s) goto 0x0001A0
0x000184:
    self.direction = (+ self.direction 90s)
    goto 0x0001B8
0x0001A0:
    self.direction = (- self.direction 90s)
0x0001B8:
    if !(< self.hspeed 0s) goto 0x0001E4
0x0001CC:
    push (< self.x self.w_l)
    goto 0x0001E8
0x0001E4:
    push 0s
0x0001E8:
    if !pop goto 0x000244
0x0001EC:
    self.x = self.w_l
    if !(== self.cl 0s) goto 0x00022C
0x000210:
    self.direction = (+ self.direction 90s)
    goto 0x000244
0x00022C:
    self.direction = (- self.direction 90s)
0x000244:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x00026C
0x00025C:
    self.x = self.w_l
0x00026C:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x000294
0x000284:
    self.x = self.w_r
0x000294:
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x0002BC
0x0002AC:
    self.y = self.w_u
0x0002BC:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x0002E4
0x0002D4:
    self.y = self.w_d
0x0002E4:
    exit
