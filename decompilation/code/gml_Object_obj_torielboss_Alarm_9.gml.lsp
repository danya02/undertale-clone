0x000000:
    if !(== (instance_exists[]:int32 self.blconwriter) 0s) goto 0x0000C0
0x00001C:
    push -5s
    if !(== 6s:flag 0s) goto 0x000050
0x000038:
    stog.alarm[10s] = 2s
    goto 0x0000BC
0x000050:
    self.destroyed = -1s
    pushenv (int32 self.blcon) 0x000078
0x00006C:
    call (instance_destroy[]:int32 )
0x000078:
    popenv 0x00006C
0x00007C:
    self.tr = (instance_create[]:int32 (var 601s) self.y self.x)
    self.visible = 0s
    self.conversation = -20s
0x0000BC:
    goto 0x0000D4
0x0000C0:
    stog.alarm[9s] = 2s
0x0000D4:
    exit
