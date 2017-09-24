0x000000:
    self.gameshake = 100s
    stog.alarm[0s] = 8s
    if !(== global.osflavor 1s) goto 0x000048
0x000034:
    call (window_set_fullscreen[]:int32 (var 0s))
0x000048:
    call (window_set_caption[]:int32 (var " "))
    if !(== global.osflavor 1s) goto 0x0000C8
0x000074:
    call (window_center[]:int32 )
    self.wx = (window_get_x[]:int32 )
    self.wy = (window_get_y[]:int32 )
    call (window_set_position[]:int32 self.wy (+ self.wx self.gameshake))
0x0000C8:
    stog.background_index[3s] = 193s
    stog.background_foreground[3s] = 1s
    stog.background_htiled[3s] = 1s
    stog.background_vtiled[3s] = 1s
    stog.background_visible[3s] = 1s
    stog.background_hspeed[3s] = 0s
    stog.background_vspeed[3s] = 0s
0x000154:
    exit
