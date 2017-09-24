0x000000:
    if !(> global.floweyhp 4000s) goto 0x000068
0x000014:
    pushenv 1585s 0x000060
0x00001C:
    call (caster_play[]:int32 (- 0.9d (random[]:int32 (var 0.3d))) (var 1s) self.sfx_oh)
0x000060:
    popenv 0x00001C
0x000064:
    goto 0x0000B8
0x000068:
    pushenv 1585s 0x0000B4
0x000070:
    call (caster_play[]:int32 (- 0.9d (random[]:int32 (var 0.2d))) (var 1s) self.sfx_ted)
0x0000B4:
    popenv 0x000070
0x0000B8:
    exit
