0x000000:
    if !(bool (instance_exists[]:int32 (var 273s))) goto 0x000048
0x000018:
    self.xx = (- 273.x 20s)
    self.yy = (- 273.y 20s)
0x000048:
    if !(== self.drawngr 1s) goto 0x000070
0x00005C:
    call (sprite_delete[]:int32 self.gr)
0x000070:
    self.gr = (sprite_create_from_screen_x[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (- 759.y self.yy) (var 240s) self.yy self.xx)
    self.sprite_index = self.gr
    if !(== global.debug 1s) goto 0x0001D8
0x0000F0:
    if !(bool (keyboard_check[]:int32 (var 32s))) goto 0x0001D8
0x000108:
    if !(bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x000140
0x000120:
    self.qq = (+ self.qq 0.2d)
0x000140:
    if !(bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x000178
0x000158:
    self.qq = (- self.qq 0.2d)
0x000178:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x0001A8
0x000190:
    self.ww = (- self.ww 1s)
0x0001A8:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x0001D8
0x0001C0:
    self.ww = (+ self.ww 1s)
0x0001D8:
    call (scr_waver_height[]:int32 self.ww self.qq)
    self.drawngr = 1s
    self.idealww2 = (+ self.idealww (random[]:int32 (var 6s)))
    if !(> self.ww self.idealww2) goto 0x000254
0x00023C:
    self.ww = (- self.ww 1s)
0x000254:
    if !(< self.ww self.idealww2) goto 0x000284
0x00026C:
    self.ww = (+ self.ww 1s)
0x000284:
    if !(== self.idealww 0.1d) goto 0x0002B4
0x0002A0:
    push (< self.ww 2s)
    goto 0x0002B8
0x0002B4:
    push 0s
0x0002B8:
    if !pop goto 0x0002C8
0x0002BC:
    call (instance_destroy[]:int32 )
0x0002C8:
    exit
