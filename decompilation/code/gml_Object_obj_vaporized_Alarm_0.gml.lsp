0x000000:
    if !(== self.finishedreading 0s) goto 0x0002BC
0x000014:
    self.i = 0s
    if !(< self.i (/ self.wd (double 2s))) goto 0x000104
0x000044:
    self.mychar = (string_char_at[]:int32 self.myread self.mydata)
    if !(== self.mychar "1") goto 0x0000D0
0x00007C:
    call (instance_create[]:int32 (var 193s) (+ self.y (* self.line 4s)) (- (+ self.x (* self.i 2s)) 2s))
0x0000D0:
    self.myread = (+ self.myread 1s)
    self.i = (+ self.i 1s)
    goto 0x000020
0x000104:
    if !(== self.myvapor 0s) goto 0x000220
0x000118:
    self.line = (+ self.line 1s)
    self.i = 0s
    if !(< self.i (/ self.wd (double 2s))) goto 0x000220
0x000160:
    self.mychar = (string_char_at[]:int32 self.myread self.mydata)
    if !(== self.mychar "1") goto 0x0001EC
0x000198:
    call (instance_create[]:int32 (var 193s) (+ self.y (* self.line 4s)) (- (+ self.x (* self.i 2s)) 2s))
0x0001EC:
    self.myread = (+ self.myread 1s)
    self.i = (+ self.i 1s)
    goto 0x00013C
0x000220:
    self.line = (+ self.line 1s)
    if !(> self.line (- (/ self.ht (double 2s)) 4s)) goto 0x000274
0x000264:
    self.finishedreading = 1s
    goto 0x0002BC
0x000274:
    stog.alarm[0s] = (+ 1s self.myvapor)
    if !(> self.myvapor 1s) goto 0x0002BC
0x0002A8:
    call (snd_play[]:int32 (var 92s))
0x0002BC:
    exit
