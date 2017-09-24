0x000000:
    stog.p[0s] = (caster_load[]:int32 (var "music/paino/piano1.ogg"))
    stog.p[1s] = (caster_load[]:int32 (var "music/paino/piano2.ogg"))
    stog.p[2s] = (caster_load[]:int32 (var "music/paino/piano3.ogg"))
    stog.p[3s] = (caster_load[]:int32 (var "music/paino/piano4.ogg"))
    stog.p[4s] = (caster_load[]:int32 (var "music/paino/piano5.ogg"))
    stog.p[5s] = (caster_load[]:int32 (var "music/paino/piano6.ogg"))
    stog.p[6s] = (caster_load[]:int32 (var "music/paino/piano7.ogg"))
    stog.p[7s] = (caster_load[]:int32 (var "music/paino/piano8.ogg"))
    stog.p[8s] = (caster_load[]:int32 (var "music/paino/piano9.ogg"))
    stog.p[9s] = (caster_load[]:int32 (var "music/paino/pianoA.ogg"))
    self.i = 0s
    if !(< self.i 30s) goto 0x0001C0
0x000188:
    stog.pp[(int32 self.i)] = -1s
    self.i = (+ self.i 1s)
    goto 0x000174
0x0001C0:
    self.i = 0s
    if !(< self.i 10s) goto 0x000234
0x0001E0:
    stog.justplayed[(int32 self.i)] = 0s
    stog.played[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    goto 0x0001CC
0x000234:
    self.num = 0s
    global.interact = 1s
    self.buffer = 5s
    self.coff = 0s
    self.won = 0s
    self.wonned = 0s
    self.oldmode = 0s
0x000288:
    exit
