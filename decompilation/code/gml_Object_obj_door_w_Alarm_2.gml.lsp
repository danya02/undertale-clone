0x000000:
    global.entrance = 23s
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    if !(== self.room 68s) goto 0x000058
0x000044:
    call (room_goto[]:int32 (var 73s))
0x000058:
    if !(== self.room 73s) goto 0x000080
0x00006C:
    call (room_goto[]:int32 (var 68s))
0x000080:
    if !(== self.room 116s) goto 0x0000A8
0x000094:
    call (room_goto[]:int32 (var 119s))
0x0000A8:
    if !(== self.room 119s) goto 0x0000D0
0x0000BC:
    call (room_goto[]:int32 (var 116s))
0x0000D0:
    if !(== self.room 148s) goto 0x0000F8
0x0000E4:
    call (room_goto[]:int32 (var 151s))
0x0000F8:
    if !(== self.room 151s) goto 0x000120
0x00010C:
    call (room_goto[]:int32 (var 148s))
0x000120:
    if !(== self.room 97s) goto 0x000148
0x000134:
    call (room_goto[]:int32 (var 100s))
0x000148:
    if !(== self.room 100s) goto 0x000170
0x00015C:
    call (room_goto[]:int32 (var 97s))
0x000170:
    exit
