0x000000:
    self.thisi = (floor[]:int32 (random[]:int32 (var 10s)))
    self.i = 9s
    if !(> self.i 0s) goto 0x000094
0x000040:
    push -1s
    stog.rp[(int32 self.i)] = (int32 (- self.i 1s)):rp
    self.i = (- self.i 1s)
    goto 0x00002C
0x000094:
    stog.rp[0s] = (- global.ratings (random[]:int32 (/ global.ratings (double 2s))))
    if !(== self.accu 6s) goto 0x0000F8
0x0000E0:
    stog.rp[0s] = global.ratings
0x0000F8:
    self.accu = (+ self.accu 1s)
    if !(== self.accu 10s) goto 0x000130
0x000124:
    self.accu = 0s
0x000130:
    stog.alarm[5s] = 6s
0x000144:
    exit
