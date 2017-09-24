0x000000:
    if (> self.x (+ 743.x 400s)) goto 0x000040
0x000020:
    push (< self.x (- 743.x 400s))
    goto 0x000044
0x000040:
    push 1s
0x000044:
    if !pop goto 0x000054
0x000048:
    call (instance_destroy[]:int32 )
0x000054:
    exit
