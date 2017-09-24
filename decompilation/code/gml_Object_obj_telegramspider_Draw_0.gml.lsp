0x000000:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
    self.siner = (+ self.siner 1s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (sin[]:int32 (/ self.siner (double 10s))) 10s) (var 2s) (var 2s) (- self.y 2s) (- self.x 4s) self.image_index (var 413s))
    if !(== self.con 0s) goto 0x00011C
0x000108:
    push (< self.x 570s)
    goto 0x000120
0x00011C:
    push 0s
0x000120:
    if !pop goto 0x000170
0x000124:
    self.hspeed = (+ self.hspeed 0.2d)
    if !(>= self.hspeed 0s) goto 0x000170
0x000158:
    self.hspeed = 0s
    self.con = 1s
0x000170:
    if !(== self.con 2s) goto 0x0001BC
0x000184:
    self.hspeed = (+ self.hspeed 1s)
    if !(> self.x 700s) goto 0x0001BC
0x0001B0:
    call (instance_destroy[]:int32 )
0x0001BC:
    exit
