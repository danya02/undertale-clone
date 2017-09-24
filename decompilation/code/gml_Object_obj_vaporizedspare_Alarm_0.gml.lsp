0x000000:
    self.i = 0s
    if !(< self.i (/ self.wd (double 2s))) goto 0x0000D4
0x000030:
    if !(== (file_text_read_string[]:int32 self.file) "1") goto 0x0000A4
0x000050:
    call (instance_create[]:int32 (var 194s) (+ self.y (* self.line 4s)) (- (+ self.x (* self.i 2s)) 2s))
0x0000A4:
    call (file_text_readln[]:int32 self.file)
    self.i = (+ self.i 1s)
    goto 0x00000C
0x0000D4:
    if !(== self.myvapor 0s) goto 0x0001CC
0x0000E8:
    self.line = (+ self.line 1s)
    self.i = 0s
    if !(< self.i (/ self.wd (double 2s))) goto 0x0001CC
0x000130:
    if !(== (file_text_read_string[]:int32 self.file) "1") goto 0x00019C
0x000150:
    call (instance_create[]:int32 (var 194s) (+ self.y (* self.line 4s)) (+ self.x (* self.i 2s)))
0x00019C:
    call (file_text_readln[]:int32 self.file)
    self.i = (+ self.i 1s)
    goto 0x00010C
0x0001CC:
    self.line = (+ self.line 1s)
    if !(> self.line (- (/ self.ht (double 2s)) 4s)) goto 0x000234
0x000210:
    call (file_text_close[]:int32 self.file)
    call (instance_destroy[]:int32 )
    exit
0x000234:
    stog.alarm[0s] = (+ 1s self.myvapor)
    if !(> self.myvapor 1s) goto 0x00027C
0x000268:
    call (snd_play[]:int32 (var 92s))
0x00027C:
    exit
