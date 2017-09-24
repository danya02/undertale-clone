0x000000:
    self.anim = (+ self.anim 0.2d)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 78s) self.x (floor[]:int32 self.anim) (var 807s))
    if !(== self.set 0s) goto 0x0000F4
0x00009C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x global.facechoice (var 808s))
0x0000F4:
    if !(== self.set 1s) goto 0x000160
0x000108:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x global.facechoice (var 809s))
0x000160:
    exit
