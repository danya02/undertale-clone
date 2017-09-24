0x000000:
    if !(== self.drawngr 1s) goto 0x000028
0x000014:
    call (sprite_delete[]:int32 self.gr)
0x000028:
    self.gr = (sprite_create_from_screen_x[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (- 759.y self.yy) self.width self.yy self.xx)
    self.sprite_index = self.gr
    if !(== global.debug 1s) goto 0x000190
0x0000A8:
    if !(bool (keyboard_check[]:int32 (var 32s))) goto 0x000190
0x0000C0:
    if !(bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x0000F8
0x0000D8:
    self.qq = (+ self.qq 0.2d)
0x0000F8:
    if !(bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x000130
0x000110:
    self.qq = (- self.qq 0.2d)
0x000130:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x000160
0x000148:
    self.ww = (- self.ww 1s)
0x000160:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x000190
0x000178:
    self.ww = (+ self.ww 1s)
0x000190:
    call (scr_waver_height[]:int32 self.ww self.qq)
    self.drawngr = 1s
    self.idealww2 = (+ self.idealww (random[]:int32 (var 6s)))
    if !(> self.ww self.idealww2) goto 0x000214
0x0001F4:
    self.ww = (- self.ww 0.5d)
0x000214:
    if !(< self.ww self.idealww2) goto 0x00024C
0x00022C:
    self.ww = (+ self.ww 0.5d)
0x00024C:
    if !(== self.idealww 0.1d) goto 0x00027C
0x000268:
    push (< self.ww 2s)
    goto 0x000280
0x00027C:
    push 0s
0x000280:
    if !pop goto 0x000290
0x000284:
    call (instance_destroy[]:int32 )
0x000290:
    exit
