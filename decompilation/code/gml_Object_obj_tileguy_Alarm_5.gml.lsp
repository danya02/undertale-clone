0x000000:
    self.moved = 0s
    self.prevx = self.x
    self.prevy = self.y
    if !(== self.moving 1s) goto 0x000054
0x000040:
    push (== self.moved 0s)
    goto 0x000058
0x000054:
    push 0s
0x000058:
    if !pop goto 0x000074
0x00005C:
    self.moving = 3s
    self.moved = 1s
0x000074:
    if !(== self.moving 2s) goto 0x00009C
0x000088:
    push (== self.moved 0s)
    goto 0x0000A0
0x00009C:
    push 0s
0x0000A0:
    if !pop goto 0x0000BC
0x0000A4:
    self.moving = 4s
    self.moved = 1s
0x0000BC:
    if !(== self.moving 3s) goto 0x0000E4
0x0000D0:
    push (== self.moved 0s)
    goto 0x0000E8
0x0000E4:
    push 0s
0x0000E8:
    if !pop goto 0x000104
0x0000EC:
    self.moving = 1s
    self.moved = 1s
0x000104:
    if !(== self.moving 4s) goto 0x00012C
0x000118:
    push (== self.moved 0s)
    goto 0x000130
0x00012C:
    push 0s
0x000130:
    if !pop goto 0x00014C
0x000134:
    self.moving = 2s
    self.moved = 1s
0x00014C:
    self.electrocute = 0s
0x000158:
    exit
