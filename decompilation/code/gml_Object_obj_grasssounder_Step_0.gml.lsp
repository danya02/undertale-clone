0x000000:
    if !(== self.sound 1s) goto 0x000028
0x000014:
    push (< self.soundtimer 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x00005C
0x000030:
    call (snd_play[]:int32 (var 22s))
    self.sound = 0s
    self.soundtimer = 3s
0x00005C:
    self.soundtimer = (- self.soundtimer 1s)
0x000074:
    exit
