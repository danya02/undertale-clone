0x000000:
    self.siner = (+ self.siner 1s)
    if !(== self.type 0s) goto 0x000104
0x00002C:
    if !(> self.counter 0s) goto 0x000054
0x000040:
    push (< self.counter 14s)
    goto 0x000058
0x000054:
    push 0s
0x000058:
    if !pop goto 0x000068
0x00005C:
    self.vspeed = -6s
0x000068:
    if !(== self.counter 14s) goto 0x000088
0x00007C:
    self.vspeed = 0s
0x000088:
    if !(> self.counter 20s) goto 0x0000B0
0x00009C:
    push (< self.counter 30s)
    goto 0x0000B4
0x0000B0:
    push 0s
0x0000B4:
    if !pop goto 0x0000C4
0x0000B8:
    self.vspeed = 8s
0x0000C4:
    if !(== self.counter 30s) goto 0x0000E4
0x0000D8:
    self.vspeed = 0s
0x0000E4:
    if !(> self.counter 40s) goto 0x000104
0x0000F8:
    self.counter = 1s
0x000104:
    if !(== self.type 1s) goto 0x000168
0x000118:
    self.vspeed = 0s
    if !(> self.speed 0s) goto 0x00015C
0x000138:
    self.speed = (- self.speed 0.2d)
    goto 0x000168
0x00015C:
    self.speed = 0s
0x000168:
    self.counter = (+ self.counter 1s)
    if !(< self.x -100s) goto 0x0001A0
0x000194:
    call (instance_destroy[]:int32 )
0x0001A0:
    exit
