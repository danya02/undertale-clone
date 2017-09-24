0x000000:
    if !(< self.temno 8s) goto 0x000410
0x000014:
    self.temno = (+ self.temno 1s)
    stog.temx1[(int32 self.temno)] = self.x
    stog.temy1[(int32 self.temno)] = self.y
    self.xdif = (- self.x (+ 743.x 6s))
    self.ydif = (- self.y (+ 743.y 6s))
    self.final = (- (abs[]:int32 self.xdif) (abs[]:int32 self.ydif))
    if !(<= self.final 0s) goto 0x000128
0x0000F4:
    if !(>= self.ydif 0s) goto 0x000118
0x000108:
    self.direction = 90s
    goto 0x000124
0x000118:
    self.direction = 270s
0x000124:
    goto 0x000158
0x000128:
    if !(>= self.xdif 0s) goto 0x00014C
0x00013C:
    self.direction = 180s
    goto 0x000158
0x00014C:
    self.direction = 0s
0x000158:
    stog.temdir[(int32 self.temno)] = self.direction
    push -1s
    push (int32 self.temno):temdir
    if (== -1s (+ (int32 (- self.temno 1s)):temdir 180s)) goto 0x000208
0x0001C0:
    push -1s
    push (int32 self.temno):temdir
    push (== -1s (- (int32 (- self.temno 1s)):temdir 180s))
    goto 0x00020C
0x000208:
    push 1s
0x00020C:
    if !pop goto 0x000254
0x000210:
    self.direction = (- self.direction 90s)
    push -1s
    stog.temdir[(- (int32 self.temno):temdir 90s)] = (int32 self.temno)
0x000254:
    push -1s
    push (int32 self.temno):temdir
    if !(== -1s (int32 (- self.temno 1s)):temdir) goto 0x0002C8
0x000294:
    stog.temx1[(int32 self.temno)] = 0s
    self.temno = (- self.temno 1s)
0x0002C8:
    if !(> self.temno 0s) goto 0x0003BC
0x0002DC:
    if !(== self.direction 90s) goto 0x00031C
0x0002F0:
    push -1s
    push (== (int32 (- self.temno 1s)):temdir 180s)
    goto 0x000320
0x00031C:
    push 0s
0x000320:
    if !pop goto 0x00034C
0x000324:
    stog.temx2[(int32 (- self.temno 1s))] = self.x
0x00034C:
    if !(== self.direction 180s) goto 0x00038C
0x000360:
    push -1s
    push (== (int32 (- self.temno 1s)):temdir 90s)
    goto 0x000390
0x00038C:
    push 0s
0x000390:
    if !pop goto 0x0003BC
0x000394:
    stog.temy2[(int32 (- self.temno 1s))] = self.y
0x0003BC:
    stog.alarm[0s] = (+ 60s (random[]:int32 (var 20s)))
    push -1s
    stog.temtim[(int32 self.temno)] = 0s:alarm
    goto 0x000424
0x000410:
    stog.alarm[1s] = 1s
0x000424:
    exit
