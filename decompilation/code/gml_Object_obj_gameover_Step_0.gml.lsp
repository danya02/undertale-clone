0x000000:
    if !(== self.unpersist 1s) goto 0x000028
0x000014:
    call (room_goto[]:int32 global.currentroom)
0x000028:
    if !(== self.room global.currentroom) goto 0x00006C
0x000040:
    self.room_persistent = 0s
    call (script_execute[]:int32 (var 58s))
    call (instance_destroy[]:int32 )
0x00006C:
    exit
