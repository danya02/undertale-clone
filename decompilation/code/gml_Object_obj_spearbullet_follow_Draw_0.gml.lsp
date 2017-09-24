0x000000:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) self.image_angle (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
    if !(== self.rotspeed 0s) goto 0x000120
0x00006C:
    self.xoff = (lengthdir_x[]:int32 self.direction (var 25s))
    self.yoff = (lengthdir_y[]:int32 self.direction (var 25s))
    call (draw_line[]:int32 (+ self.y self.yoff) (+ self.x self.xoff) (- self.y (/ self.yoff (double 2s))) (- self.x (/ self.xoff (double 2s))))
0x000120:
    if !(< global.turntimer 1s) goto 0x000140
0x000134:
    call (instance_destroy[]:int32 )
0x000140:
    exit
