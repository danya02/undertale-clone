0x000000:
    if !(== self.head 2s) goto 0x000034
0x000014:
    push (>= self.y (- 1570.y 3s))
    goto 0x000038
0x000034:
    push 0s
0x000038:
    if !pop goto 0x000078
0x00003C:
    self.head = 0s
    self.y = (- 1570.y 3s)
    self.onhead = 1s
    self.speed = 0s
0x000078:
    if !(== self.onhead 1s) goto 0x0000BC
0x00008C:
    self.x = (+ 1570.x 7s)
    self.y = (- 1570.y 3s)
0x0000BC:
    exit
