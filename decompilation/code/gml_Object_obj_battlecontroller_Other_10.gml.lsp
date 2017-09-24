0x000000:
    if !(== self.won 1s) goto 0x000044
0x000014:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000044
0x000030:
    call (room_goto[]:int32 global.currentroom)
0x000044:
    if !(== self.won 1s) goto 0x00009C
0x000058:
    if !(== (instance_exists[]:int32 (var 782s)) 1s) goto 0x00009C
0x000074:
    if !(!= 782.halt 0s) goto 0x00009C
0x000088:
    call (room_goto[]:int32 global.currentroom)
0x00009C:
    exit
