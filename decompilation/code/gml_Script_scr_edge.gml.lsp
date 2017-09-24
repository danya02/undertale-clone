0x000000:
    push self.x
    if !(> -5s (- 1s:idealborder self.argument0)) goto 0x000048
0x00002C:
    self.x = (- self.x self.argument0)
0x000048:
    push self.x
    if !(< -5s (+ 0s:idealborder self.argument1)) goto 0x000090
0x000074:
    self.x = (+ self.x self.argument1)
0x000090:
    exit
