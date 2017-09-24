0x000000:
    if (> (abs[]:int32 (- 743.xprevious 743.x)) 0.01d) goto 0x000060
0x000030:
    push (> (abs[]:int32 (- 743.yprevious 743.y)) 0.01d)
    goto 0x000064
0x000060:
    push 1s
0x000064:
    if !pop goto 0x000078
0x000068:
    ret var (var 1s)
    goto 0x000084
0x000078:
    ret var (var 0s)
0x000084:
    exit
