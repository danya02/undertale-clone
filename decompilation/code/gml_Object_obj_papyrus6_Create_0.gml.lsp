0x000000:
    self.image_yscale = 999s
    self.conversation = 0s
    if !(>= (scr_murderlv[]:int32 ) 4s) goto 0x000048
0x00002C:
    push -5s
    push (== 27s:flag 0s)
    goto 0x00004C
0x000048:
    push 0s
0x00004C:
    if !pop goto 0x000074
0x000050:
    stog.flag[62s] = 1s
    call (instance_destroy[]:int32 )
    exit
0x000074:
    push -5s
    if !(> 62s:flag 0s) goto 0x0000A0
0x000090:
    call (instance_destroy[]:int32 )
    goto 0x0000F0
0x0000A0:
    self.papyrus = (instance_create[]:int32 (var 1032s) (var 90s) (var 450s))
    push (int32 self.papyrus):rtsprite
    stog.sprite_index* = (int32 self.papyrus)
0x0000F0:
    exit
