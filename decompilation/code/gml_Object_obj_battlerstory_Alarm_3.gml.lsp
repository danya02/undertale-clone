0x000000:
    global.currentroom = self.room
    self.room_persistent = 1s
    self.f = (instance_create[]:int32 (var 147s) (var 0s) (var 0s))
    push -0.25d
    stog.tspeed* = (int32 self.f)
    call (room_goto[]:int32 self.myroom)
0x000078:
    exit
