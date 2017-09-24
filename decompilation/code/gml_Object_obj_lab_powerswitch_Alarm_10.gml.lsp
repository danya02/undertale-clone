0x000000:
    self.i = 0s
    if (<= 4s 0) goto 0x00007C
0x000024:
    push 4s
    push 0s
    push -1s
    stog.vspeed* = (int32 (int32 self.i):am)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000024
0x00007C:
    push (- pop 1)
    pop
    stog.alarm[9s] = 30s
0x000094:
    exit
