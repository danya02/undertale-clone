0x000000:
    self.i = 0s
    if !(< self.i (/ self.wd (double 2s))) goto 0x0001A8
0x000030:
    if !(== (draw_getpixel[]:int32 (+ self.y (* self.line 2s)) (+ self.x (* self.i 2s))) 16777215) goto 0x0000CC
0x000080:
    call (instance_create[]:int32 (var 192s) (+ self.y (* self.line 2s)) (+ self.x (* self.i 2s)))
0x0000CC:
    if !(== self.myvapor 0s) goto 0x00018C
0x0000E0:
    if !(== (draw_getpixel[]:int32 (+ (+ self.y (* self.line 2s)) 2s) (+ self.x (* self.i 2s))) 16777215) goto 0x00018C
0x000138:
    call (instance_create[]:int32 (var 192s) (+ (+ self.y (* self.line 2s)) 2s) (+ self.x (* self.i 2s)))
0x00018C:
    self.i = (+ self.i 1s)
    goto 0x00000C
0x0001A8:
    if !(== self.myvapor 0s) goto 0x0001D4
0x0001BC:
    self.line = (+ self.line 1s)
0x0001D4:
    self.line = (+ self.line 1s)
    if !(> self.line (/ self.ht (double 2s))) goto 0x000220
0x000210:
    call (instance_destroy[]:int32 )
    exit
0x000220:
    stog.alarm[0s] = (+ 1s self.myvapor)
    if !(> self.myvapor 1s) goto 0x000268
0x000254:
    call (snd_play[]:int32 (var 92s))
0x000268:
    exit
