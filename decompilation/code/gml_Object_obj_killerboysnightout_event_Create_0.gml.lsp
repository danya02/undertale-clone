0x000000:
    self.image_xscale = 3s
    if (> global.plot 163s) goto 0x000034
0x000020:
    push (< (scr_murderlv[]:int32 ) 12s)
    goto 0x000038
0x000034:
    push 1s
0x000038:
    if !pop goto 0x000050
0x00003C:
    call (instance_destroy[]:int32 )
    exit
    goto 0x0000E0
0x000050:
    self.bunny = (scr_marker[]:int32 (var 1837s) (var 80s) (var 154s))
    self.dragon = (scr_marker[]:int32 (var 1838s) (var 80s) (var 184s))
    pushenv (int32 self.bunny) 0x0000BC
0x0000B0:
    call (scr_depth[]:int32 )
0x0000BC:
    popenv 0x0000B0
0x0000C0:
    pushenv (int32 self.dragon) 0x0000DC
0x0000D0:
    call (scr_depth[]:int32 )
0x0000DC:
    popenv 0x0000D0
0x0000E0:
    self.con = 0s
0x0000EC:
    exit
