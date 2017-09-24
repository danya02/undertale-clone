0x000000:
    if !(< self.ammo self.idealammo) goto 0x000090
0x000018:
    if !(< self.ammo (- self.idealammo 1s)) goto 0x000050
0x000038:
    self.buffer = (+ self.buffer 6s)
0x000050:
    self.ammo = (+ self.ammo 1s)
    call (snd_play[]:int32 (var 106s))
    stog.alarm[5s] = 6s
0x000090:
    exit
