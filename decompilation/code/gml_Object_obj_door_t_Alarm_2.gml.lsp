0x000000:
    global.entrance = 20s
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    if !(== self.room 68s) goto 0x000058
0x000044:
    call (room_goto[]:int32 (var 71s))
0x000058:
    if !(== self.room 71s) goto 0x000080
0x00006C:
    call (room_goto[]:int32 (var 68s))
0x000080:
    if !(== self.room 95s) goto 0x0000A8
0x000094:
    call (room_goto[]:int32 (var 99s))
0x0000A8:
    if !(== self.room 97s) goto 0x0000D0
0x0000BC:
    call (room_goto[]:int32 (var 99s))
0x0000D0:
    if !(== self.room 99s) goto 0x0000F8
0x0000E4:
    call (room_goto[]:int32 (var 95s))
0x0000F8:
    if !(== self.room 101s) goto 0x000120
0x00010C:
    call (room_goto[]:int32 (var 104s))
0x000120:
    if !(== self.room 104s) goto 0x000148
0x000134:
    call (room_goto[]:int32 (var 101s))
0x000148:
    if !(== self.room 116s) goto 0x000170
0x00015C:
    call (room_goto[]:int32 (var 124s))
0x000170:
    if !(== self.room 124s) goto 0x000198
0x000184:
    call (room_goto[]:int32 (var 116s))
0x000198:
    if !(== self.room 148s) goto 0x0001C0
0x0001AC:
    call (room_goto[]:int32 (var 153s))
0x0001C0:
    if !(== self.room 162s) goto 0x0001E8
0x0001D4:
    call (room_goto[]:int32 (var 159s))
0x0001E8:
    if !(== self.room 159s) goto 0x000210
0x0001FC:
    call (room_goto[]:int32 (var 162s))
0x000210:
    if !(== self.room 153s) goto 0x000238
0x000224:
    call (room_goto[]:int32 (var 148s))
0x000238:
    if !(== self.room 155s) goto 0x000260
0x00024C:
    call (room_goto[]:int32 (var 148s))
0x000260:
    if !(== self.room 171s) goto 0x000288
0x000274:
    call (room_goto[]:int32 (var 174s))
0x000288:
    if !(== self.room 174s) goto 0x0002B0
0x00029C:
    call (room_goto[]:int32 (var 171s))
0x0002B0:
    if !(== self.room 246s) goto 0x0002D8
0x0002C4:
    call (room_goto[]:int32 (var 250s))
0x0002D8:
    if !(== self.room 250s) goto 0x000300
0x0002EC:
    call (room_goto[]:int32 (var 246s))
0x000300:
    if !(== self.room 251s) goto 0x000328
0x000314:
    call (room_goto[]:int32 (var 254s))
0x000328:
    if !(== self.room 254s) goto 0x000350
0x00033C:
    call (room_goto[]:int32 (var 251s))
0x000350:
    if !(== self.room 139s) goto 0x000378
0x000364:
    call (room_goto[]:int32 (var 214s))
0x000378:
    if !(== self.room 214s) goto 0x0003A0
0x00038C:
    call (room_goto[]:int32 (var 139s))
0x0003A0:
    if !(== self.room 78s) goto 0x0003C8
0x0003B4:
    call (room_goto[]:int32 (var 76s))
0x0003C8:
    if !(== self.room 79s) goto 0x0003F0
0x0003DC:
    call (room_goto[]:int32 (var 76s))
0x0003F0:
    if !(== self.room 76s) goto 0x00044C
0x000404:
    push -5s
    if !(<= 497s:flag 1s) goto 0x000438
0x000420:
    call (room_goto[]:int32 (var 79s))
    goto 0x00044C
0x000438:
    call (room_goto[]:int32 (var 78s))
0x00044C:
    exit
