0x000000:
    if !(== self.type 0s) goto 0x000028
0x000014:
    push (== self.go 1s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0000C4
0x000030:
    if (> self.y self.arb) goto 0x000060
0x000048:
    push (< self.y self.arb2)
    goto 0x000064
0x000060:
    push 1s
0x000064:
    if !pop goto 0x0000C4
0x000068:
    self.y = self.yprevious
    self.vspeed = (- self.vspeed)
    pushenv (int32 self.rope) 0x0000C0
0x00009C:
    self.y = self.yprevious
    self.vspeed = (- self.vspeed)
0x0000C0:
    popenv 0x00009C
0x0000C4:
    push self.x
    if !(< -5s (- 0s:idealborder 20s)) goto 0x0000F8
0x0000EC:
    call (instance_destroy[]:int32 )
0x0000F8:
    exit
