0x000000:
    if !(== self.ch 1s) goto 0x000058
0x000014:
    if !(== 743.x 743.xprevious) goto 0x000044
0x00002C:
    push (== 743.y 743.yprevious)
    goto 0x000048
0x000044:
    push 0s
0x000048:
    if !pop goto 0x000058
0x00004C:
    call (scr_damagestandard_x[]:int32 )
0x000058:
    if !(== self.ch 0s) goto 0x0000B0
0x00006C:
    if (!= 743.x 743.xprevious) goto 0x00009C
0x000084:
    push (!= 743.y 743.yprevious)
    goto 0x0000A0
0x00009C:
    push 1s
0x0000A0:
    if !pop goto 0x0000B0
0x0000A4:
    call (scr_damagestandard_x[]:int32 )
0x0000B0:
    exit
