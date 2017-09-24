0x000000:
    if !(== self.move 1s) goto 0x0001D4
0x000014:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x000088
0x00002C:
    if !(> self.x 0s) goto 0x000088
0x000040:
    if (!= 1585.darkmode 0s) goto 0x000068
0x000054:
    push (> self.x 108s)
    goto 0x00006C
0x000068:
    push 1s
0x00006C:
    if !pop goto 0x000088
0x000070:
    self.x = (- self.x 4s)
0x000088:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x00010C
0x0000A0:
    if !(< self.x (- self.room_width self.sprite_width)) goto 0x00010C
0x0000C4:
    if (!= 1585.darkmode 0s) goto 0x0000EC
0x0000D8:
    push (< self.x 512s)
    goto 0x0000F0
0x0000EC:
    push 1s
0x0000F0:
    if !pop goto 0x00010C
0x0000F4:
    self.x = (+ self.x 4s)
0x00010C:
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x000180
0x000124:
    if !(> self.y 0s) goto 0x000180
0x000138:
    if (!= 1585.darkmode 0s) goto 0x000160
0x00014C:
    push (> self.y 268s)
    goto 0x000164
0x000160:
    push 1s
0x000164:
    if !pop goto 0x000180
0x000168:
    self.y = (- self.y 4s)
0x000180:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x0001D4
0x000198:
    if !(< self.y (- self.room_height self.sprite_height)) goto 0x0001D4
0x0001BC:
    self.y = (+ self.y 4s)
0x0001D4:
    global.my_inv = (- global.my_inv 1s)
    if !(> global.my_inv 0s) goto 0x000218
0x000200:
    self.image_speed = 0.5d
    goto 0x000230
0x000218:
    self.image_index = 0s
    self.image_speed = 0s
0x000230:
    if !(<= global.my_hp 0s) goto 0x000258
0x000244:
    push (== self.special 0s)
    goto 0x00025C
0x000258:
    push 0s
0x00025C:
    if !pop goto 0x000284
0x000260:
    call (instance_create[]:int32 (var 1600s) self.y self.x)
0x000284:
    exit
