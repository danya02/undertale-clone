0x000000:
    if !(> global.plot 66s) goto 0x000024
0x000014:
    call (instance_destroy[]:int32 )
    goto 0x0000BC
0x000024:
    self.conversation = 0s
    self.image_yscale = 999s
    self.sans = (instance_create[]:int32 (var 1033s) (var 60s) (var 820s))
    self.papyrus = (instance_create[]:int32 (var 1032s) (var 90s) (var 820s))
    push 1334s
    stog.sprite_index* = (int32 self.papyrus)
    push 1353s
    stog.sprite_index* = (int32 self.sans)
0x0000BC:
    self.look = 0s
    self.spinagain = 0s
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 5s) goto 0x000110
0x0000F4:
    push -5s
    push (== 27s:flag 0s)
    goto 0x000114
0x000110:
    push 0s
0x000114:
    if !pop goto 0x000124
0x000118:
    self.murder = 1s
0x000124:
    self.image_yscale = 4s
0x000130:
    exit
