0x000000:
    self.gig = (instance_create[]:int32 (var 587s) (var -10s) self.x)
    push self.giga
    stog.giga* = (int32 self.gig)
    if !(== self.giga 1s) goto 0x0000AC
0x000058:
    pushenv 586s 0x000074
0x000060:
    call (event_user[]:int32 (var 1s))
0x000074:
    popenv 0x000060
0x000078:
    push 4s
    stog.image_xscale* = (int32 self.gig)
    push -2s
    stog.ss* = (int32 self.gig)
    goto 0x0000CC
0x0000AC:
    pushenv 586s 0x0000C8
0x0000B4:
    call (event_user[]:int32 (var 0s))
0x0000C8:
    popenv 0x0000B4
0x0000CC:
    call (instance_destroy[]:int32 )
0x0000D8:
    exit
