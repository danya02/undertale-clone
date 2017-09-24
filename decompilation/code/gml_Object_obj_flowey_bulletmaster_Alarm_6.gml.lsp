0x000000:
    if !(== global.battlephase 6s) goto 0x0000B0
0x000014:
    self.unhinged = 1s
    self.maxtimer = 9999999
    pushenv 1585s 0x000074
0x000038:
    self.megadamage = 1s
    self.mustype = 5s
    call (caster_loop[]:int32 (var 1s) (var 1s) self.mus_finale3)
0x000074:
    popenv 0x000038
0x000078:
    stog.alarm[7s] = 900s
    pushenv 1586s 0x0000AC
0x000094:
    self.desperate = 1s
    self.wimpy = 0s
0x0000AC:
    popenv 0x000094
0x0000B0:
    exit
