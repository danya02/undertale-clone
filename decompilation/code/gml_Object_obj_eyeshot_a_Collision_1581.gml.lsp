0x000000:
    if !(== self.active 1s) goto 0x000030
0x000014:
    push (> self.image_alpha 0.3d)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000044
0x000038:
    call (event_inherited[]:int32 )
0x000044:
    exit
