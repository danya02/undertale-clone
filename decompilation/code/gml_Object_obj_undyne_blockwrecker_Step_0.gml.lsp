0x000000:
    if !(< global.plot 118s) goto 0x00002C
0x000014:
    call (tile_layer_hide[]:int32 (var 999900))
0x00002C:
    if !(> global.plot 117s) goto 0x0000BC
0x000040:
    call (tile_layer_show[]:int32 (var 999900))
    self.d = (instance_position[]:int32 (var 6s) (+ self.y 5s) (+ self.x 5s))
    pushenv (int32 self.d) 0x0000AC
0x0000A0:
    call (instance_destroy[]:int32 )
0x0000AC:
    popenv 0x0000A0
0x0000B0:
    call (instance_destroy[]:int32 )
0x0000BC:
    exit
