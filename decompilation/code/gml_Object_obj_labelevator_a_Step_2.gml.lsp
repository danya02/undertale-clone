0x000000:
    if !(== self.dt 0s) goto 0x000070
0x000014:
    self.thispic = (sprite_create_from_screen_x[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 480s) (var 640s) (var 0s) (var 0s))
    self.dt = 1s
0x000070:
    exit
