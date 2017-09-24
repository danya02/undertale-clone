0x000000:
    global.currentroom = self.room
    if !(!= self.room 118s) goto 0x000030
0x000024:
    self.room_persistent = 1s
0x000030:
    call (instance_create[]:int32 (var 147s) (var 0s) (var 0s))
    call (room_goto[]:int32 (var 306s))
0x000068:
    exit
