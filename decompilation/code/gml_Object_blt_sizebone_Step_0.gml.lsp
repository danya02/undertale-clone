0x000000:
    if !(== self.drawn 1s) goto 0x000028
0x000014:
    push (== self.active 1s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0000B0
0x000030:
    if (<= self.y (- self.ystart self.oscmax)) goto 0x000078
0x000054:
    push (>= self.y (- self.ystart self.oscmin))
    goto 0x00007C
0x000078:
    push 1s
0x00007C:
    if !pop goto 0x000094
0x000080:
    self.osc = (- self.osc)
0x000094:
    self.y = (+ self.y self.osc)
0x0000B0:
    exit
