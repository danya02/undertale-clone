0x000000:
    self.spaces = (+ self.spaces 1s)
    if !(>= self.spaces 50s) goto 0x0000E4
0x00002C:
    self.i = 0s
    if (<= 99s 0) goto 0x00009C
0x000050:
    push 99s
    stog.failure[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000050
0x00009C:
    push (- pop 1)
    pop
    global.attacktype = 30s
    global.testhp = 20s
    global.testinv = 0s
    global.healno = 6s
    call (room_goto[]:int32 self.room0)
0x0000E4:
    exit
