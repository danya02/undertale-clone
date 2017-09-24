0x000000:
    if !(>= global.plot 43s) goto 0x000024
0x000014:
    call (instance_destroy[]:int32 )
    goto 0x0000BC
0x000024:
    self.conversation = 0s
    self.image_yscale = 999s
    self.sans = (instance_create[]:int32 (var 1033s) (var 74s) (var 240s))
    self.papyrus = (instance_create[]:int32 (var 1032s) (var 100s) (var 240s))
    push 1327s
    stog.sprite_index* = (int32 self.papyrus)
    push 1355s
    stog.sprite_index* = (int32 self.sans)
0x0000BC:
    self.look = 0s
    self.spinagain = 0s
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 3s) goto 0x000100
0x0000F4:
    self.murder = 1s
0x000100:
    push -5s
    if !(== 27s:flag 1s) goto 0x000128
0x00011C:
    self.murder = 0s
0x000128:
    self.mcmove = 0s
0x000134:
    exit
