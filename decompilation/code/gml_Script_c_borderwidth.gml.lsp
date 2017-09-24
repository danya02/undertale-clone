0x000000:
    if !(== self.argument0 0s) goto 0x00002C
0x000014:
    ret var (- 760.x 758.x)
0x00002C:
    if !(== self.argument0 1s) goto 0x000068
0x000040:
    push -5s
    push 1s:idealborder
    ret var (- -5s 0s:idealborder)
0x000068:
    exit
