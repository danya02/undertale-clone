0x000000:
    if (<= 3s 0) goto 0x00005C
0x000018:
    push 3s
    call (instance_create[]:int32 (var 1151s) (+ self.y 5s) self.x)
    if (bool (- pop 1)) goto 0x000018
0x00005C:
    push (- pop 1)
    pop
    call (instance_destroy[]:int32 )
0x00006C:
    exit
