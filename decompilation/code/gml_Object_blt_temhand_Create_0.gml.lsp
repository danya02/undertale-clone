0x000000:
    if !(bool (instance_exists[]:int32 (var 294s))) goto 0x000024
0x000018:
    [obj_tembody].atk = 1s
0x000024:
    self.i = 0s
    if (<= 10s 0) goto 0x000120
0x000048:
    push 10s
    stog.temdir[(int32 self.i)] = 0s
    stog.temtim[(int32 self.i)] = 0s
    stog.temx1[(int32 self.i)] = 0s
    stog.temx2[(int32 self.i)] = 0s
    stog.temy1[(int32 self.i)] = 0s
    stog.temy2[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000048
0x000120:
    push (- pop 1)
    pop
    self.speed = 4s
    stog.temx1[0s] = self.x
    stog.temx2[0s] = (+ self.x 9s)
    stog.temy1[0s] = self.y
    stog.temy[0s] = (+ self.y 9s)
    stog.temdir[0s] = 270s
    push -1s
    self.direction = 0s:temdir
    stog.alarm[0s] = (+ 20s (random[]:int32 (var 20s)))
    stog.temtim[0s] = 90s
    self.temno = 0s
    self.turned = 0s
0x000220:
    exit
