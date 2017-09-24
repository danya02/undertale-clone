0x000000:
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    if !(== self.room 68s) goto 0x00004C
0x000038:
    push (< self.x 1000s)
    goto 0x000050
0x00004C:
    push 0s
0x000050:
    if !pop goto 0x000068
0x000054:
    call (room_goto[]:int32 (var 311s))
0x000068:
    if !(== self.room 68s) goto 0x00009C
0x00007C:
    push (> self.x (- self.room_width 80s))
    goto 0x0000A0
0x00009C:
    push 0s
0x0000A0:
    if !pop goto 0x0000B8
0x0000A4:
    call (room_goto[]:int32 (var 81s))
0x0000B8:
    if !(== self.room 81s) goto 0x0000E0
0x0000CC:
    call (room_goto[]:int32 (var 68s))
0x0000E0:
    if !(== self.room 65s) goto 0x00010C
0x0000F4:
    call (room_goto[]:int32 (var 265s))
    exit
0x00010C:
    if !(== self.room 265s) goto 0x000138
0x000120:
    call (room_goto[]:int32 (var 65s))
    exit
0x000138:
    if !(== self.room 99s) goto 0x000160
0x00014C:
    call (room_goto[]:int32 (var 116s))
0x000160:
    if !(== self.room 116s) goto 0x000188
0x000174:
    call (room_goto[]:int32 (var 99s))
0x000188:
    if !(== self.room 124s) goto 0x0001B0
0x00019C:
    call (room_goto[]:int32 (var 312s))
0x0001B0:
    if !(== self.room 182s) goto 0x0001D8
0x0001C4:
    call (room_goto[]:int32 (var 313s))
0x0001D8:
    if !(== self.room 181s) goto 0x000200
0x0001EC:
    call (room_goto[]:int32 (var 187s))
0x000200:
    if !(== self.room 187s) goto 0x000228
0x000214:
    call (room_goto[]:int32 (var 181s))
0x000228:
    if !(== self.room 188s) goto 0x000250
0x00023C:
    call (room_goto[]:int32 (var 183s))
0x000250:
    if !(== self.room 183s) goto 0x000278
0x000264:
    call (room_goto[]:int32 (var 188s))
0x000278:
    if !(== self.room 220s) goto 0x0002A0
0x00028C:
    call (room_goto[]:int32 (var 226s))
0x0002A0:
    if !(== self.room 226s) goto 0x0002C8
0x0002B4:
    call (room_goto[]:int32 (var 220s))
0x0002C8:
    if !(== self.room 232s) goto 0x0002F0
0x0002DC:
    call (room_goto[]:int32 (var 235s))
0x0002F0:
    if !(== self.room 235s) goto 0x000318
0x000304:
    call (room_goto[]:int32 (var 232s))
0x000318:
    if !(== self.room 128s) goto 0x000340
0x00032C:
    call (room_goto[]:int32 (var 315s))
0x000340:
    exit
