0x000000:
    if !(== global.debug 1s) goto 0x0001E4
0x000014:
    call (instance_create[]:int32 (var 1617s) (var -100s) (* self.room_width 0.5d))
    call (instance_create[]:int32 (var 1617s) (var -220s) (* self.room_width 0s))
    call (instance_create[]:int32 (var 1617s) (var -220s) (* self.room_width 1s))
    call (instance_create[]:int32 (var 1617s) (var -500s) (* self.room_width 0.5d))
    call (instance_create[]:int32 (var 1617s) (var -620s) (* self.room_width 0s))
    call (instance_create[]:int32 (var 1617s) (var -620s) (* self.room_width 1s))
    self.lg = (instance_create[]:int32 (var 1617s) (var -900s) (* self.room_width 0.5d))
    pushenv (int32 self.lg) 0x000188
0x000174:
    call (event_user[]:int32 (var 6s))
0x000188:
    popenv 0x000174
0x00018C:
    call (instance_create[]:int32 (var 1617s) (var -1020s) (* self.room_width 0s))
    call (instance_create[]:int32 (var 1617s) (var -1020s) (* self.room_width 1s))
0x0001E4:
    exit
