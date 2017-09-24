0x000000:
    self.image_alpha = (+ self.image_alpha 0.05d)
    self.image_angle = (- self.image_angle self.rotspeed)
    if !(> self.rotspeed 0s) goto 0x000068
0x000050:
    self.rotspeed = (- self.rotspeed 1s)
0x000068:
    if !(== self.rotspeed 0s) goto 0x000090
0x00007C:
    push (< self.speed 1s)
    goto 0x000094
0x000090:
    push 0s
0x000094:
    if !pop goto 0x000104
0x000098:
    call (snd_play[]:int32 (var 20s))
    call (move_towards_point[]:int32 (var 3s) (+ 743.y 10s) (+ 743.x 10s))
    self.friction = -0.3d
    self.image_angle = self.direction
0x000104:
    self.xoff = (lengthdir_x[]:int32 self.direction (var 25s))
    self.yoff = (lengthdir_y[]:int32 self.direction (var 25s))
    if !(== self.rotspeed 0s) goto 0x00016C
0x000158:
    push (== self.deactivate 0s)
    goto 0x000170
0x00016C:
    push 0s
0x000170:
    if !pop goto 0x000210
0x000174:
    if !(bool (collision_line[]:int32 (var 0s) (var 1s) (var 743s) (+ self.y self.yoff) (+ self.x self.xoff) (- self.y (/ self.yoff (double 2s))) (- self.x (/ self.xoff (double 2s))))) goto 0x000210
0x000204:
    call (scr_damagestandard_x[]:int32 )
0x000210:
    if !(== self.deactivate 1s) goto 0x000264
0x000224:
    self.image_alpha = (- self.image_alpha 0.1d)
    if !(<= self.image_alpha 0s) goto 0x000264
0x000258:
    call (instance_destroy[]:int32 )
0x000264:
    exit
