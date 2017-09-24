0x000000:
    if !(< global.turntimer 1s) goto 0x000038
0x000014:
    global.turntimer = -1s
    global.mnfight = 3s
    call (instance_destroy[]:int32 )
0x000038:
    if !(< self.path_position 0.5d) goto 0x000074
0x000054:
    self.path_speed = (+ self.path_speed 0.2d)
0x000074:
    if !(> self.path_position 0.5d) goto 0x0000B0
0x000090:
    self.path_speed = (- self.path_speed 0.1d)
0x0000B0:
    if !(== self.path_position 1s) goto 0x0000F4
0x0000C4:
    call (path_end[]:int32 )
    self.speed = 0s
    self.gravity = 0s
    self.inactive = 1s
0x0000F4:
    if !(<= global.hp 2s) goto 0x000114
0x000108:
    global.turntimer = -100s
0x000114:
    exit
