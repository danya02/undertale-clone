0x000000:
    global.currentroom = self.room
    call (instance_create[]:int32 (var 147s) (var 0s) (var 0s))
    if !(== self.room 5s) goto 0x000068
0x000048:
    call (room_goto[]:int32 (var 307s))
    self.room_persistent = 1s
0x000068:
    if !(== self.room 77s) goto 0x000090
0x00007C:
    call (room_goto[]:int32 (var 317s))
0x000090:
    if !(bool (instance_exists[]:int32 (var 1307s))) goto 0x0000BC
0x0000A8:
    call (room_goto[]:int32 (var 318s))
0x0000BC:
    exit
