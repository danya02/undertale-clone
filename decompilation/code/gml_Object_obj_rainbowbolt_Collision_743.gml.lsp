0x000000:
    if !(> self.image_alpha 0.8d) goto 0x000030
0x00001C:
    push (== self.non 1s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x00004C
0x000038:
    call (event_user[]:int32 (var 7s))
0x00004C:
    exit
