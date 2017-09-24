0x000000:
    self.fansfx = (caster_load[]:int32 (var "music/deeploop2.ogg"))
    push -5s
    if !(== 490s:flag 1s) goto 0x0000B8
0x000038:
    if !(== self.room 260s) goto 0x000078
0x00004C:
    call (caster_loop[]:int32 (var 3s) (var 0.5d) self.fansfx)
0x000078:
    if !(== self.room 258s) goto 0x0000B8
0x00008C:
    call (caster_loop[]:int32 (var 3s) (var 0.3d) self.fansfx)
0x0000B8:
    if !(== self.room 260s) goto 0x0000E0
0x0000CC:
    call (caster_pause[]:int32 global.currentsong)
0x0000E0:
    exit
