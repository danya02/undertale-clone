0x000000:
    self.siner = 0s
    self.image_speed = 0s
    push -5s
    if !(== 7s:flag 0s) goto 0x000044
0x000034:
    call (instance_destroy[]:int32 )
    exit
0x000044:
    self.hole = (scr_marker[]:int32 (var 1177s) (+ self.ystart 50s) (+ self.x 12s))
    push 0.9d
    stog.image_alpha* = (int32 self.hole)
    push 600000
    stog.depth* = (int32 self.hole)
0x0000B8:
    exit
