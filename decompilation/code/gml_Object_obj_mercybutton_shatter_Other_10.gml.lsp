0x000000:
    if !(== (instance_exists[]:int32 (var 184s)) 0s) goto 0x000040
0x00001C:
    call (scr_shake[]:int32 (var 2s) (var 6s) (var 6s))
0x000040:
    call (snd_play[]:int32 (var 21s))
    call (snd_play[]:int32 (var 30s))
    self.i = 0s
    self.visible = 0s
    if (<= 2s 0) goto 0x0002EC
0x000098:
    push 2s
    self.i = 0s
    if (<= 6s 0) goto 0x0001B8
0x0000BC:
    push 6s
    self.iii = (instance_create[]:int32 (var 479s) (+ self.y 21s) (+ self.x 55s))
    push self.i
    stog.image_index* = (int32 self.iii)
    push (- -14s (random[]:int32 (var 26s)))
    stog.hspeed* = (int32 self.iii)
    push 0.1d
    stog.friction* = (int32 self.iii)
    push (+ 7s (random[]:int32 (var 4s)))
    stog.aa* = (int32 self.iii)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0000BC
0x0001B8:
    push (- pop 1)
    pop
    if (<= 5s 0) goto 0x0002D0
0x0001D4:
    push 5s
    self.iii = (instance_create[]:int32 (var 479s) (+ self.y 21s) (+ self.x 55s))
    push self.i
    stog.image_index* = (int32 self.iii)
    push (+ 10s (random[]:int32 (var 30s)))
    stog.hspeed* = (int32 self.iii)
    push 0.1d
    stog.friction* = (int32 self.iii)
    push (- -8s (random[]:int32 (var 4s)))
    stog.aa* = (int32 self.iii)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0001D4
0x0002D0:
    push (- pop 1)
    pop
    if (bool (- pop 1)) goto 0x000098
0x0002EC:
    push (- pop 1)
    pop
    call (instance_destroy[]:int32 )
0x0002FC:
    exit
