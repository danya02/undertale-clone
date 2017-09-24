0x000000:
    push -5s
    self.gil = 0s:idealborder
    push -5s
    self.gir = 1s:idealborder
    self.giw = (- self.gir self.gil)
    push -5s
    self.giu = 2s:idealborder
    if !(== self.t 1s) goto 0x00021C
0x000078:
    self.i = 0s
    if (<= 2s 0) goto 0x000218
0x00009C:
    push 2s
    self.j = 0s
    if (<= 4s 0) goto 0x0001E4
0x0000C0:
    push 4s
    self.gg = (instance_create[]:int32 (var 469s) (- (- (- self.giu 80s) (* 360s self.i)) (random[]:int32 (var 90s))) (+ (- (+ (+ self.gil (* self.j (/ self.giw (double 4s)))) 20s) (random[]:int32 (var 10s))) (* 10s self.j)))
    push (- (random[]:int32 (var 0.25d)) (random[]:int32 (var 0.25d)))
    stog.vspeed* = (int32 self.gg)
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x0000C0
0x0001E4:
    push (- pop 1)
    pop
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x00009C
0x000218:
    push (- pop 1)
    pop
0x00021C:
    if !(== self.t 2s) goto 0x000430
0x000230:
    self.i = 0s
    if (<= 2s 0) goto 0x00042C
0x000254:
    push 2s
    self.j = 0s
    if (<= 4s 0) goto 0x0003F8
0x000278:
    push 4s
    self.gg = (instance_create[]:int32 (var 469s) (- (- (- self.giu 80s) (* 340s self.i)) (random[]:int32 (var 90s))) (+ (- (+ (+ self.gil (* self.j (/ self.giw (double 4s)))) 20s) (random[]:int32 (var 10s))) (* 10s self.j)))
    push 5.5d
    stog.mysf* = (int32 self.gg)
    push 3.5d
    stog.mysv* = (int32 self.gg)
    push (random[]:int32 (var 2s))
    stog.mys* = (int32 self.gg)
    push (- (+ 0s (random[]:int32 (var 2s))) (random[]:int32 (var 2s)))
    stog.vspeed* = (int32 self.gg)
    self.j = (+ self.j 1s)
    if (bool (- pop 1)) goto 0x000278
0x0003F8:
    push (- pop 1)
    pop
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000254
0x00042C:
    push (- pop 1)
    pop
0x000430:
    exit
