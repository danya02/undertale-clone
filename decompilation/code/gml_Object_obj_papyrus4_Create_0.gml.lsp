0x000000:
    if !(>= global.plot 58s) goto 0x000024
0x000014:
    call (instance_destroy[]:int32 )
    goto 0x0000D8
0x000024:
    self.conversation = 0s
    self.image_yscale = 999s
    self.sans = (instance_create[]:int32 (var 1033s) (var 120s) (var 245s))
    self.papyrus = (instance_create[]:int32 (var 1032s) (var 74s) (var 245s))
    push 1316s
    stog.sprite_index* = (int32 self.papyrus)
    push 1362s
    stog.sprite_index* = (int32 self.sans)
    self.computersound = (caster_load[]:int32 (var "music/computer.ogg"))
0x0000D8:
    self.look = 0s
    self.spinagain = 0s
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 4s) goto 0x00012C
0x000110:
    push -5s
    push (== 27s:flag 0s)
    goto 0x000130
0x00012C:
    push 0s
0x000130:
    if !pop goto 0x000140
0x000134:
    self.murder = 1s
0x000140:
    exit
