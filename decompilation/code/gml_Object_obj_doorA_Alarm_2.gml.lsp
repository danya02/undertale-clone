0x000000:
    global.entrance = 1s
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    if !(!= self.room 236s) goto 0x000064
0x000044:
    call (room_goto[]:int32 (room_next[]:int32 self.room))
    goto 0x0000A4
0x000064:
    push -5s
    if !(== 7s:flag 1s) goto 0x000098
0x000080:
    call (room_goto[]:int32 (var 240s))
    goto 0x0000A4
0x000098:
    call (room_goto_next[]:int32 )
0x0000A4:
    exit
