0x000000:
    if !(== self.myinteract 453748) goto 0x00009C
0x000018:
    if !(== (snd_isplaying[]:int32 (var 112s)) 0s) goto 0x000048
0x000034:
    call (snd_play[]:int32 (var 112s))
0x000048:
    if !(== self.image_index 0s) goto 0x000078
0x00005C:
    self.image_index = 1s
    self.glow = 1s
    goto 0x000090
0x000078:
    self.image_index = 0s
    self.glow = 0s
0x000090:
    self.myinteract = 0s
0x00009C:
    if !(== self.myinteract 1s) goto 0x0000FC
0x0000B0:
    global.interact = 1s
    call (caster_pause[]:int32 global.currentsong)
    self.image_index = 1s
    stog.alarm[4s] = 15s
    self.myinteract = 0s
0x0000FC:
    if !(== self.bluh 1s) goto 0x000150
0x000110:
    call (snd_play[]:int32 (var 23s))
    self.image_index = 2s
    self.bluh = 2s
    stog.alarm[4s] = 35s
0x000150:
    if !(== self.bluh 3s) goto 0x00019C
0x000164:
    global.interact = 0s
    self.image_index = 0s
    call (caster_resume[]:int32 global.currentsong)
    self.bluh = 0s
0x00019C:
    exit
