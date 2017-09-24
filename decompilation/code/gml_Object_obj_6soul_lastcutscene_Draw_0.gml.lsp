0x000000:
    self.counter = (+ self.counter self.sinerspeed)
    self.siner = (+ self.siner 1s)
    self.radius = (+ self.radius (* (sin[]:int32 (/ self.siner (double 6s))) 2s))
    if !(== self.con 1s) goto 0x0000A0
0x000080:
    self.sinerspeed = (+ self.sinerspeed 0.25d)
0x0000A0:
    self.i = 0s
    if !(< self.i 6s) goto 0x000180
0x0000C0:
    call (draw_sprite[]:int32 (+ self.y (lengthdir_y[]:int32 (+ self.counter (* (/ self.i (double 6s)) 360s)) self.radius)) (+ self.x (lengthdir_x[]:int32 (+ self.counter (* (/ self.i (double 6s)) 360s)) self.radius)) self.i self.sprite_index)
    self.i = (+ self.i 1s)
    goto 0x0000AC
0x000180:
    exit
