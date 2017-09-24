0x000000:
    if !(== self.t 1s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x0000B0
0x000038:
    self.exception = 0s
    if !(== self.exception 0s) goto 0x000064
0x000058:
    call (instance_destroy[]:int32 )
0x000064:
    global.interact = 0s
    if !(== self.room 149s) goto 0x0000B0
0x000084:
    call (snd_play[]:int32 (var 132s))
    [obj_bluelaser_o].active = 2s
    call (instance_destroy[]:int32 )
0x0000B0:
    exit
