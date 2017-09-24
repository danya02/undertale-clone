0x000000:
    if !(== self.myinteract 1s) goto 0x000028
0x000014:
    push (== self.con 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000068
0x000030:
    global.interact = 1s
    self.con = 1s
    call (event_user[]:int32 (var 9s))
    self.image_index = 1s
0x000068:
    exit
