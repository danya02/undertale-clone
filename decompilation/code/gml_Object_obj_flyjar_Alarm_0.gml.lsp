0x000000:
    self.off = 1s
    if (<= 54s 0) goto 0x000070
0x000024:
    push 54s
    call (instance_create[]:int32 (var 304s) (+ self.y 30s) (+ self.x 30s))
    if (bool (- pop 1)) goto 0x000024
0x000070:
    push (- pop 1)
    pop
0x000074:
    exit
