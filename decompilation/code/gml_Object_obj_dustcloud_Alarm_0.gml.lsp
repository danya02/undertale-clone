0x000000:
    self.friction = 0.8d
    self.direction = (random[]:int32 (var 360s))
    if !(< self.rightside 0.75d) goto 0x000054
0x000048:
    self.direction = 180s
0x000054:
    if !(> self.rightside 1.25d) goto 0x00007C
0x000070:
    self.direction = 0s
0x00007C:
    if !(> self.topside 1.25d) goto 0x0000B4
0x000098:
    push (> self.rightside 1.25d)
    goto 0x0000B8
0x0000B4:
    push 0s
0x0000B8:
    if !pop goto 0x0000C8
0x0000BC:
    self.direction = 45s
0x0000C8:
    if !(> self.topside 1.25d) goto 0x00011C
0x0000E4:
    if !(> self.rightside 0.75d) goto 0x00011C
0x000100:
    push (< self.rightside 1.25d)
    goto 0x000120
0x00011C:
    push 0s
0x000120:
    if !pop goto 0x000130
0x000124:
    self.direction = 90s
0x000130:
    if !(> self.topside 1.25d) goto 0x000168
0x00014C:
    push (< self.rightside 0.75d)
    goto 0x00016C
0x000168:
    push 0s
0x00016C:
    if !pop goto 0x00017C
0x000170:
    self.direction = 135s
0x00017C:
    if !(< self.topside 0.75d) goto 0x0001B4
0x000198:
    push (> self.rightside 1.25d)
    goto 0x0001B8
0x0001B4:
    push 0s
0x0001B8:
    if !pop goto 0x0001C8
0x0001BC:
    self.direction = 315s
0x0001C8:
    if !(< self.topside 0.75d) goto 0x00021C
0x0001E4:
    if !(> self.rightside 0.75d) goto 0x00021C
0x000200:
    push (< self.rightside 1.25d)
    goto 0x000220
0x00021C:
    push 0s
0x000220:
    if !pop goto 0x000230
0x000224:
    self.direction = 270s
0x000230:
    if !(< self.topside 0.75d) goto 0x000268
0x00024C:
    push (< self.rightside 0.75d)
    goto 0x00026C
0x000268:
    push 0s
0x00026C:
    if !pop goto 0x00027C
0x000270:
    self.direction = 235s
0x00027C:
    self.direction = (- self.direction)
    self.speed = 8s
0x00029C:
    exit
