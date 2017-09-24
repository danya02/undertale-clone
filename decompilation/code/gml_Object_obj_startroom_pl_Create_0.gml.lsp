0x000000:
    self.i = 0s
    if (<= 99s 0) goto 0x000070
0x000024:
    push 99s
    stog.failure[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000024
0x000070:
    push (- pop 1)
    pop
    global.attacktype = 26s
    global.testhp = 20s
    global.testinv = 0s
    global.healno = 6s
    stog.specialdam[0s] = 0s
    stog.specialdam[1s] = 0s
    stog.specialdam[2s] = 0s
0x0000E0:
    exit
