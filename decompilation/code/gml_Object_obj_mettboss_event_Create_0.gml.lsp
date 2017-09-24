0x000000:
    call (tile_layer_hide[]:int32 (var 999995))
    stog.flag[15s] = 0s
    if !(> global.plot 197s) goto 0x000050
0x000040:
    call (instance_destroy[]:int32 )
    exit
0x000050:
    if !(== global.plot 193s) goto 0x000098
0x000064:
    call (instance_create[]:int32 (var 1248s) (var 0s) (var 0s))
    call (instance_destroy[]:int32 )
    exit
0x000098:
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x0000C4
0x0000B8:
    self.murder = 1s
0x0000C4:
    stog.flag[20s] = 6s
    self.con = 0s
    self.mett = (instance_create[]:int32 (var 1172s) (var 705s) (var 146s))
    push 0s
    stog.image_speed* = (int32 self.mett)
    self.bl = 0s
    self.drawblack = 0s
    self.bly = 0s
    self.skip = 0s
    self.sixty = (scr_marker[]:int32 (var 1964s) (var 680s) (var 60s))
    push 999995
    stog.depth* = (int32 self.sixty)
    push 0s
    stog.image_alpha* = (int32 self.sixty)
    self.sixtyflash = 0s
    self.sixtyon = 0s
    self.s_siner = 0s
    self.x_maroon = (merge_color[]:int32 (var 0.35d) (var 128s) (var 0s))
0x000204:
    exit
