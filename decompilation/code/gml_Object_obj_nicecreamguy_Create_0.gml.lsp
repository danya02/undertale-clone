0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    push -5s
    if !(> 60s:flag 0s) goto 0x000088
0x000074:
    push (== self.room 53s)
    goto 0x00008C
0x000088:
    push 0s
0x00008C:
    if !pop goto 0x00009C
0x000090:
    self.sprite_index = 1289s
0x00009C:
    push -5s
    if !(> 79s:flag 0s) goto 0x0000CC
0x0000B8:
    push (== self.room 96s)
    goto 0x0000D0
0x0000CC:
    push 0s
0x0000D0:
    if !pop goto 0x0000E0
0x0000D4:
    self.sprite_index = 1289s
0x0000E0:
    if !(>= global.plot 101s) goto 0x000108
0x0000F4:
    push (== self.room 53s)
    goto 0x00010C
0x000108:
    push 0s
0x00010C:
    if !pop goto 0x00011C
0x000110:
    call (instance_destroy[]:int32 )
0x00011C:
    if !(>= global.plot 121s) goto 0x000144
0x000130:
    push (== self.room 96s)
    goto 0x000148
0x000144:
    push 0s
0x000148:
    if !pop goto 0x000158
0x00014C:
    call (instance_destroy[]:int32 )
0x000158:
    if !(== self.room 181s) goto 0x000194
0x00016C:
    push -5s
    if !(== 402s:flag 0s) goto 0x000194
0x000188:
    self.sprite_index = 1289s
0x000194:
    self.conversation = 0s
    self.j = 0s
    self.mouth = 0s
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 3s) goto 0x0001E4
0x0001D8:
    self.murder = 1s
0x0001E4:
    push -5s
    if !(== 27s:flag 1s) goto 0x00020C
0x000200:
    self.murder = 0s
0x00020C:
    push -5s
    if !(>= 203s:flag 16s) goto 0x000234
0x000228:
    self.murder = 1s
0x000234:
    if !(== self.murder 1s) goto 0x000254
0x000248:
    call (instance_destroy[]:int32 )
0x000254:
    exit
