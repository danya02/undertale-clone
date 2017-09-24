0x000000:
    if !(== self.col 0s) goto 0x000118
0x000014:
    call (snd_play[]:int32 (var 11s))
    self.oo = 1068s
    self.j = (instance_create[]:int32 (var 1067s) (int32 self.oo):y (int32 self.oo):x)
    push 1s
    stog.image_index* = (int32 self.oo)
    if (<= 10s 0) goto 0x000108
0x0000A4:
    push 10s
    call (instance_create[]:int32 (var 1066s) (+ (int32 self.oo):y 30s) (+ (int32 self.oo):x 11s))
    if (bool (- pop 1)) goto 0x0000A4
0x000108:
    push (- pop 1)
    pop
    self.col = 1s
0x000118:
    exit
