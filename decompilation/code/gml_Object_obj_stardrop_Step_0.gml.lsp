0x000000:
    if (> self.y self.room_height) goto 0x00002C
0x000018:
    push (< self.y 0s)
    goto 0x000030
0x00002C:
    push 1s
0x000030:
    if !pop goto 0x000040
0x000034:
    call (instance_destroy[]:int32 )
0x000040:
    if !(== self.shake 1s) goto 0x0000DC
0x000054:
    self.x = (+ self.x (* (sin[]:int32 (/ self.siner (double 2s))) 2s))
    self.image_angle = (+ self.image_angle (* (sin[]:int32 (/ self.siner (double 2s))) 2s))
    self.siner = (+ self.siner 1s)
0x0000DC:
    if !(!= global.mnfight 2s) goto 0x0000FC
0x0000F0:
    call (instance_destroy[]:int32 )
0x0000FC:
    exit
