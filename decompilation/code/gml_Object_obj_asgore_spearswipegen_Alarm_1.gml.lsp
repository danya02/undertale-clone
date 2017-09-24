0x000000:
    if !(== self.on 0s) goto 0x000038
0x000014:
    call (event_user[]:int32 (var 1s))
    self.on = 1s
    goto 0x000058
0x000038:
    call (event_user[]:int32 (var 2s))
    self.on = 0s
0x000058:
    if !(< self.typeno self.typeamt) goto 0x0000D4
0x000070:
    stog.alarm[1s] = self.flashtimer
    call (caster_stop[]:int32 self.flash)
    call (caster_play[]:int32 (var 1.05d) (var 0.5d) self.flash)
    goto 0x00013C
0x0000D4:
    call (caster_stop[]:int32 self.flash)
    call (caster_play[]:int32 (var 0.8d) (var 0.6d) self.flash)
    stog.alarm[2s] = (+ self.flashtimer 15s)
0x00013C:
    self.typeno = (+ self.typeno 1s)
0x000154:
    exit
