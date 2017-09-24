0x000000:
    if !(== self.bb 0s) goto 0x000020
0x000014:
    self.bb = 1s
0x000020:
    if !(== self.cc 0s) goto 0x000040
0x000034:
    self.cc = 1s
0x000040:
    if !(== self.dd 0s) goto 0x000060
0x000054:
    self.dd = 1s
0x000060:
    if !(== self.on 1s) goto 0x00009C
0x000074:
    call (scr_fx_waver_scanline[]:int32 self.dd self.cc self.bb)
    goto 0x0000F4
0x00009C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
0x0000F4:
    if !(== self.mega 1s) goto 0x000160
0x000108:
    self.cc = (+ self.cc 1s)
    self.image_alpha = (- self.image_alpha 0.03d)
    if !(<= self.image_alpha 0s) goto 0x000160
0x000154:
    self.mega = 4s
0x000160:
    if !(== self.mega 2s) goto 0x000228
0x000174:
    if !(> self.cc 1s) goto 0x0001A0
0x000188:
    self.cc = (- self.cc 1s)
0x0001A0:
    if !(< self.image_alpha 1s) goto 0x0001D4
0x0001B4:
    self.image_alpha = (+ self.image_alpha 0.03d)
0x0001D4:
    if !(<= self.cc 1s) goto 0x000228
0x0001E8:
    self.mega = 0s
    self.on = 0s
    stog.alarm[2s] = -1s
    stog.alarm[1s] = 90s
0x000228:
    exit
