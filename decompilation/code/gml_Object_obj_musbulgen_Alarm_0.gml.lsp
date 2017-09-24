0x000000:
    self.g = (instance_create[]:int32 (var 664s) self.y self.x)
    stog.alarm[0s] = self.rate
    self.longnote = (+ self.longnote 1s)
    if !(== self.longnote 12s) goto 0x0000A4
0x00006C:
    pushenv 259s 0x0000A0
0x000074:
    push (var 1s)
    call (caster_play[]:int32 (var 1s) -1s 1s:longnote)
0x0000A0:
    popenv 0x000074
0x0000A4:
    if !(== self.longnote 24s) goto 0x0000FC
0x0000B8:
    pushenv 259s 0x0000EC
0x0000C0:
    push (var 1s)
    call (caster_play[]:int32 (var 1s) -1s 0s:longnote)
0x0000EC:
    popenv 0x0000C0
0x0000F0:
    self.longnote = 0s
0x0000FC:
    exit
