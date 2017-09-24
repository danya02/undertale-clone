0x000000:
    self.con = 0s
    self.ended = 0s
    push -5s
    if !(== 418s:flag 1s) goto 0x000040
0x000034:
    self.ended = 1s
0x000040:
    push -5s
    if !(== 419s:flag 1s) goto 0x000068
0x00005C:
    self.ended = 1s
0x000068:
    push -5s
    if !(== 420s:flag 1s) goto 0x000090
0x000084:
    self.ended = 1s
0x000090:
    if !(== self.ended 0s) goto 0x0000FC
0x0000A4:
    self.ff = (instance_create[]:int32 (var 1183s) self.y self.x)
    push 4s
    stog.image_yscale* = (int32 self.ff)
    push 0s
    stog.basic* = (int32 self.ff)
0x0000FC:
    self.timer = 0s
0x000108:
    exit
