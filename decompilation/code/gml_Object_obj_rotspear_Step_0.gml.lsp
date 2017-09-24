0x000000:
    if !(== self.deactivate 0s) goto 0x000048
0x000014:
    if !(< self.image_alpha 1s) goto 0x000048
0x000028:
    self.image_alpha = (+ self.image_alpha 0.2d)
0x000048:
    if !(== self.deactivate 1s) goto 0x0000A4
0x00005C:
    self.image_alpha = (- self.image_alpha 0.2d)
    if !(< self.image_alpha 0.3d) goto 0x0000A4
0x000098:
    call (instance_destroy[]:int32 )
0x0000A4:
    self.xoff = (lengthdir_x[]:int32 self.image_angle (var 25s))
    self.yoff = (lengthdir_y[]:int32 self.image_angle (var 25s))
    if !(>= self.image_alpha 0.8d) goto 0x00019C
0x000100:
    if !(bool (collision_line[]:int32 (var 0s) (var 1s) (var 743s) (+ self.y self.yoff) (+ self.x self.xoff) (- self.y (/ self.yoff (double 2s))) (- self.x (/ self.xoff (double 2s))))) goto 0x00019C
0x000190:
    call (scr_damagestandard_x[]:int32 )
0x00019C:
    if !(< global.turntimer 1s) goto 0x0001BC
0x0001B0:
    call (instance_destroy[]:int32 )
0x0001BC:
    exit
