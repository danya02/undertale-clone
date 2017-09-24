0x000000:
    pushenv 782s 0x000014
0x000008:
    call (instance_destroy[]:int32 )
0x000014:
    popenv 0x000008
0x000018:
    pushenv 540s 0x00002C
0x000020:
    call (instance_destroy[]:int32 )
0x00002C:
    popenv 0x000020
0x000030:
    pushenv (int32 self.blcon) 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    popenv 0x000040
0x000050:
    self.talked = 0s
    if !(== self.coherent 0s) goto 0x000084
0x000070:
    call (caster_stop[]:int32 self.dnoise)
0x000084:
    global.mnfight = 2s
    pushenv (int32 self.mypart1) 0x0000B4
0x0000A0:
    call (event_user[]:int32 (var 0s))
0x0000B4:
    popenv 0x0000A0
0x0000B8:
    exit
