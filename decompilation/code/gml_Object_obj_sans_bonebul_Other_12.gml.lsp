0x000000:
    if !(!= self.type 1s) goto 0x000028
0x000014:
    call (event_user[]:int32 (var 7s))
0x000028:
    if !(== self.type 1s) goto 0x0000B8
0x00003C:
    if (> (abs[]:int32 (- 743.xprevious 743.x)) 0.01d) goto 0x00009C
0x00006C:
    push (> (abs[]:int32 (- 743.yprevious 743.y)) 0.01d)
    goto 0x0000A0
0x00009C:
    push 1s
0x0000A0:
    if !pop goto 0x0000B8
0x0000A4:
    call (event_user[]:int32 (var 7s))
0x0000B8:
    exit
