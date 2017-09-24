0x000000:
    push -5s
    if !(== 7s:flag 0s) goto 0x000030
0x00001C:
    call (caster_free[]:int32 self.shopmus)
0x000030:
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    call (room_goto[]:int32 (var 68s))
0x000068:
    exit
