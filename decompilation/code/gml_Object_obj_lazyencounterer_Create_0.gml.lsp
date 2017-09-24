0x000000:
    call (instance_destroy[]:int32 )
    self.cl = 0s
    if !(== self.room 144s) goto 0x000048
0x00002C:
    push -5s
    push (> 408s:flag 0s)
    goto 0x00004C
0x000048:
    push 0s
0x00004C:
    if !pop goto 0x00005C
0x000050:
    call (instance_destroy[]:int32 )
0x00005C:
    if !(== self.room 148s) goto 0x00008C
0x000070:
    push -5s
    push (> 408s:flag 1s)
    goto 0x000090
0x00008C:
    push 0s
0x000090:
    if !pop goto 0x0000A0
0x000094:
    call (instance_destroy[]:int32 )
0x0000A0:
    if !(== self.room 159s) goto 0x0000D0
0x0000B4:
    push -5s
    push (> 408s:flag 2s)
    goto 0x0000D4
0x0000D0:
    push 0s
0x0000D4:
    if !pop goto 0x0000E4
0x0000D8:
    call (instance_destroy[]:int32 )
0x0000E4:
    if !(== self.room 171s) goto 0x000114
0x0000F8:
    push -5s
    push (> 408s:flag 3s)
    goto 0x000118
0x000114:
    push 0s
0x000118:
    if !pop goto 0x000128
0x00011C:
    call (instance_destroy[]:int32 )
0x000128:
    if !(== self.room 174s) goto 0x000158
0x00013C:
    push -5s
    push (> 408s:flag 4s)
    goto 0x00015C
0x000158:
    push 0s
0x00015C:
    if !pop goto 0x00016C
0x000160:
    call (instance_destroy[]:int32 )
0x00016C:
    push -5s
    if (== 8s:flag 1s) goto 0x0001A4
0x000188:
    push -5s
    push (== 7s:flag 1s)
    goto 0x0001A8
0x0001A4:
    push 1s
0x0001A8:
    if !pop goto 0x0001B8
0x0001AC:
    call (instance_destroy[]:int32 )
0x0001B8:
    exit
