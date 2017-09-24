0x000000:
    self.rot = self.direction
    self.deg = (degtorad[]:int32 self.rot)
    self.x1 = (+ self.x (* self.r (cos[]:int32 self.deg)))
    self.y1 = (- self.y (* self.r (sin[]:int32 self.deg)))
    self.x2 = self.x
    self.y2 = self.y
    call (scr_depth[]:int32 )
    call (draw_set_color[]:int32 (var 0s))
    if !(< self.shadowy self.goaly) goto 0x0000FC
0x0000E0:
    self.shadowy = (+ self.shadowy self.shadowspeed)
0x0000FC:
    call (draw_rectangle[]:int32 (var 0s) (+ self.shadowy 14s) self.x2 (+ self.shadowy 8s) self.x1)
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) self.direction (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
    call (draw_set_color[]:int32 (var 255s))
    call (draw_line[]:int32 self.y2 self.x2 self.y1 self.x1)
    if !(> self.y1 (- self.goaly 2s)) goto 0x000264
0x0001F8:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1570s) (+ self.shadowy 14s) self.x2 (+ self.shadowy 8s) self.x1)) goto 0x000264
0x000250:
    call (event_user[]:int32 (var 2s))
0x000264:
    if !(>= self.y1 (+ self.goaly 9s)) goto 0x000298
0x000284:
    call (event_user[]:int32 (var 3s))
0x000298:
    if !(== self.active 0s) goto 0x0002F4
0x0002AC:
    self.image_alpha = (- self.image_alpha 0.05d)
    if !(< self.image_alpha 0.1d) goto 0x0002F4
0x0002E8:
    self.active = 2s
0x0002F4:
    if !(== self.active 2s) goto 0x000314
0x000308:
    call (instance_destroy[]:int32 )
0x000314:
    exit
