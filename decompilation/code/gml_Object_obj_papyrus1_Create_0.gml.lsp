0x000000:
    if !(>= global.plot 39s) goto 0x000024
0x000014:
    call (instance_destroy[]:int32 )
    goto 0x0000BC
0x000024:
    self.conversation = 0s
    self.image_yscale = 999s
    self.sans = (instance_create[]:int32 (var 1033s) (var 110s) (var 240s))
    self.papyrus = (instance_create[]:int32 (var 1032s) (var 130s) (var 240s))
    push 1327s
    stog.sprite_index* = (int32 self.papyrus)
    push 1355s
    stog.sprite_index* = (int32 self.sans)
0x0000BC:
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 2s) goto 0x0000E8
0x0000DC:
    self.murder = 1s
0x0000E8:
    push -5s
    if !(== 27s:flag 1s) goto 0x000110
0x000104:
    self.murder = 0s
0x000110:
    self.look = 0s
    self.spinagain = 0s
0x000128:
    exit
