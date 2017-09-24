0x000000:
    global.entrance = 22s
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    if !(== self.room 75s) goto 0x000058
0x000044:
    call (room_goto[]:int32 (var 68s))
0x000058:
    if !(== self.room 116s) goto 0x000080
0x00006C:
    call (room_goto[]:int32 (var 122s))
0x000080:
    if !(== self.room 122s) goto 0x0000A8
0x000094:
    call (room_goto[]:int32 (var 116s))
0x0000A8:
    exit
