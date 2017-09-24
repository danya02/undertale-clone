0x000000:
    if !(== self.con 1s) goto 0x000054
0x000014:
    call (snd_play[]:int32 (var 13s))
    self.image_alpha = (+ self.image_alpha 0.1d)
    self.con = 2s
0x000054:
    if !(== self.con 2s) goto 0x0000BC
0x000068:
    self.image_alpha = (+ self.image_alpha 0.07d)
    if !(> self.image_alpha 0.97d) goto 0x0000BC
0x0000A4:
    self.image_alpha = 1s
    self.con = 3s
0x0000BC:
    if !(== self.con 6s) goto 0x0000FC
0x0000D0:
    self.image_index = 3s
    self.con = 7s
    stog.alarm[5s] = 20s
0x0000FC:
    if !(== self.con 8s) goto 0x000158
0x000110:
    self.image_alpha = (- self.image_alpha 0.1d)
    if !(< self.image_alpha 0.1d) goto 0x000158
0x00014C:
    call (instance_destroy[]:int32 )
0x000158:
    exit
