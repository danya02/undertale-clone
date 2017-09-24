0x000000:
    self.con = 0s
    self.powered = 0s
    self.drawblack = 0s
    self.i = 0s
    if (<= 25s 0) goto 0x000138
0x000048:
    push 25s
    stog.ge[(int32 self.i)] = (instance_create[]:int32 (var 1281s) (var 40s) (+ 500s (* self.i 20s)))
    push 0s
    push -1s
    stog.hspeed* = (int32 (int32 self.i):ge)
    push 0s
    push -1s
    stog.rememberhspeed* = (int32 (int32 self.i):ge)
    push 1s
    push -1s
    stog.active* = (int32 (int32 self.i):ge)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000048
0x000138:
    push (- pop 1)
    pop
    if !(> global.plot 182s) goto 0x000188
0x000150:
    [obj_bluelaser_o].active = 2s
    [obj_bluelaser_o].hspeed = 0s
    push 2s
    push 1281s
    stog.alarm[] = 3s
    call (instance_destroy[]:int32 )
0x000188:
    self.flasher = 0s
    self.remhp = global.hp
    self.hptalk = 0s
0x0001B0:
    exit
