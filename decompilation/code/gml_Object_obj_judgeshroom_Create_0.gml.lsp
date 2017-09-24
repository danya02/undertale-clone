0x000000:
    self.myinteract = 0s
    self.facing = 0s
    self.talkedto = 0s
    self.image_speed = 0s
    call (scr_depth[]:int32 )
    push -5s
    if !(== 270s:flag 0s) goto 0x00006C
0x000058:
    stog.flag[270s] = 1s
0x00006C:
    if !(>= (scr_murderlv[]:int32 ) 10s) goto 0x00008C
0x000080:
    call (instance_destroy[]:int32 )
0x00008C:
    self.con = 0s
    self.buffer = 0s
0x0000A4:
    exit
