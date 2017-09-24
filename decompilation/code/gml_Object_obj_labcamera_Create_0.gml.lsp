0x000000:
    self.drawnlab = 0s
    self.altglow = 0s
    self.not_allowed = 0s
    self.fps_counter = 0s
    if !(!= global.osflavor 1s) goto 0x0000C4
0x000044:
    self.emer = (scr_marker[]:int32 (var 986s) (- self.y 1s) (- self.x 1s))
    push 0.5d
    stog.image_speed* = (int32 self.emer)
    push 198s
    stog.depth* = (int32 self.emer)
    call (instance_destroy[]:int32 )
    exit
0x0000C4:
    exit
