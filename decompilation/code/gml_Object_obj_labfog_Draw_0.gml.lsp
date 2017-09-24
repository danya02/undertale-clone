0x000000:
    self.xx = (+ self.xx self.xxspeed)
    self.yy = (+ self.yy self.yyspeed)
    push self.xx
    if !(> -1s (+ 0s:view_xview 200s)) goto 0x00007C
0x000060:
    self.xx = (- self.xx self.sprite_width)
0x00007C:
    push self.xx
    if !(< -1s (- 0s:view_xview 200s)) goto 0x0000C0
0x0000A4:
    self.xx = (+ self.xx self.sprite_width)
0x0000C0:
    push self.yy
    if !(> -1s (+ 0s:view_yview 200s)) goto 0x000104
0x0000E8:
    self.yy = (- self.yy self.sprite_height)
0x000104:
    push self.yy
    if !(< -1s (- 0s:view_yview 200s)) goto 0x000148
0x00012C:
    self.yy = (+ self.yy self.sprite_height)
0x000148:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) self.yy self.xx (var 0s) self.sprite_index)
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) (- self.yy self.sprite_height) (- self.xx self.sprite_width) (var 0s) self.sprite_index)
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) (- self.yy self.sprite_height) (+ self.xx self.sprite_width) (var 0s) self.sprite_index)
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.yy self.sprite_height) (- self.xx self.sprite_width) (var 0s) self.sprite_index)
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.yy self.sprite_height) (+ self.xx self.sprite_width) (var 0s) self.sprite_index)
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) self.yy (+ self.xx self.sprite_width) (var 0s) self.sprite_index)
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) self.yy (- self.xx self.sprite_width) (var 0s) self.sprite_index)
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.yy self.sprite_height) self.xx (var 0s) self.sprite_index)
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) (- self.yy self.sprite_height) self.xx (var 0s) self.sprite_index)
    if !(== self.image_alpha 1s) goto 0x000578
0x000504:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000578
0x00051C:
    call (draw_sprite_ext[]:int32 (var 0.3d) (var 0s) (var 0s) (var 1s) (var 1s) 1570.y 1570.x 1570.image_index 1570.sprite_index)
0x000578:
    exit
