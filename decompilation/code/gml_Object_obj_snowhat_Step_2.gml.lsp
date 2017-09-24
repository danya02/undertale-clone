0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x0001B0
0x000018:
    self.x = (- 1570.x 1s)
    self.y = (- 1570.y 15s)
    self.d = 0s
    if !(== global.interact 0s) goto 0x000074
0x000068:
    self.d = 1s
0x000074:
    if !(== self.d 1s) goto 0x0001B0
0x000088:
    call (instance_create[]:int32 (var 1504s) (+ self.y 15s) (+ self.x 10s))
    if (<= 3s 0) goto 0x0001A0
0x0000D4:
    push 3s
    self.grx = (* (choose[]:int32 (var -1s) (var 1s)) (random[]:int32 (var 7s)))
    self.gry = (* (choose[]:int32 (var -1s) (var 1s)) (random[]:int32 (var 4s)))
    call (instance_create[]:int32 (var 1504s) (+ (+ self.y 12s) self.gry) (+ (+ self.x 10s) self.grx))
    if (bool (- pop 1)) goto 0x0000D4
0x0001A0:
    push (- pop 1)
    pop
    call (instance_destroy[]:int32 )
0x0001B0:
    exit
