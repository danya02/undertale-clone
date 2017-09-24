0x000000:
    self.size = (- self.size 0.03d)
    self.image_xscale = self.size
    self.image_yscale = self.size
    if (< self.size 0.01d) goto 0x0000A8
0x00005C:
    push (< (point_distance[]:int32 (/ self.room_height (double 2s)) (/ self.room_width (double 2s)) self.y self.x) 10s)
    goto 0x0000AC
0x0000A8:
    push 1s
0x0000AC:
    if !pop goto 0x0000BC
0x0000B0:
    call (instance_destroy[]:int32 )
0x0000BC:
    exit
