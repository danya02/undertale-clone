0x000000:
    if !(== self.laugh 0s) goto 0x0002F0
0x000014:
    if !(== self.neut 0s) goto 0x000080
0x000028:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
0x000080:
    if !(== self.neut 1s) goto 0x0000EC
0x000094:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
0x0000EC:
    if !(== self.drawface 1s) goto 0x000158
0x000100:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x global.faceemotion (var 2307s))
0x000158:
    if !(== self.con 0s) goto 0x000180
0x00016C:
    push (>= self.image_index 8s)
    goto 0x000184
0x000180:
    push 0s
0x000184:
    if !pop goto 0x0001A0
0x000188:
    self.image_speed = 0s
    self.drawface = 1s
0x0001A0:
    if !(== self.con 6s) goto 0x0002F0
0x0001B4:
    if !(== self.neut 0s) goto 0x0001D4
0x0001C8:
    self.sprite_index = 623s
0x0001D4:
    if !(== self.neut 1s) goto 0x0001F4
0x0001E8:
    self.sprite_index = 647s
0x0001F4:
    self.drawface = 0s
    self.image_speed = -0.5d
    if !(< self.image_index 1s) goto 0x0002F0
0x000228:
    if !(== self.spec 0s) goto 0x00026C
0x00023C:
    self.y = (+ self.y 80s)
    self.x = (+ self.x 180s)
0x00026C:
    if !(== self.spec 1s) goto 0x00028C
0x000280:
    self.x = 100s
0x00028C:
    if !(== self.spec 2s) goto 0x0002D0
0x0002A0:
    self.y = (+ self.ystart 40s)
    self.x = (+ self.xstart 110s)
0x0002D0:
    self.con = 0s
    self.image_speed = 0.5d
0x0002F0:
    if !(== self.laugh 1s) goto 0x000388
0x000304:
    self.li = (+ self.li 1s)
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x (floor[]:int32 (/ self.li (double 2s))) (var 178s))
0x000388:
    if !(== self.laugh 2s) goto 0x00040C
0x00039C:
    self.li = (+ self.li 1s)
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 178s))
0x00040C:
    exit
