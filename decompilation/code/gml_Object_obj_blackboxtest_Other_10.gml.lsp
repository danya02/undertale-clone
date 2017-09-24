0x000000:
    self.i = 0s
    if !(< self.i 4s) goto 0x000094
0x000020:
    self.gel = (instance_create[]:int32 (var 676s) self.y self.x)
    push (+ self.image_angle (* self.i 90s))
    stog.image_angle* = (int32 self.gel)
    self.i = (+ self.i 1s)
    goto 0x00000C
0x000094:
    self.snd = (choose[]:int32 (var 2s) (var 1s) (var 0s))
    if !(== self.snd 0s) goto 0x0000E4
0x0000D0:
    call (snd_play[]:int32 (var 150s))
0x0000E4:
    if !(== self.snd 1s) goto 0x00010C
0x0000F8:
    call (snd_play[]:int32 (var 151s))
0x00010C:
    if !(== self.snd 2s) goto 0x000134
0x000120:
    call (snd_play[]:int32 (var 152s))
0x000134:
    call (instance_destroy[]:int32 )
0x000140:
    exit
