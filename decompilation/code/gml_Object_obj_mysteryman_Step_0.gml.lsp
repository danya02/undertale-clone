0x000000:
    if !(== self.myinteract 1s) goto 0x000028
0x000014:
    push (== self.con 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x00005C
0x000030:
    self.con = 1s
    call (snd_play[]:int32 (var 148s))
    self.image_index = 1s
0x00005C:
    if !(== self.con 1s) goto 0x0000B8
0x000070:
    self.image_alpha = (- self.image_alpha 0.03d)
    if !(<= self.image_alpha 0.03d) goto 0x0000B8
0x0000AC:
    call (instance_destroy[]:int32 )
0x0000B8:
    exit
