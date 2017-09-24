0x000000:
    self.xplot = 55s
    if !(>= global.plot self.xplot) goto 0x000034
0x000024:
    call (instance_destroy[]:int32 )
    goto 0x0000F0
0x000034:
    self.conversation = 0s
    self.image_yscale = 999s
    if !(>= global.plot (- self.xplot 1s)) goto 0x0000A4
0x00006C:
    self.papyrus = (instance_create[]:int32 (var 1026s) (var 60s) (var 300s))
    self.conversation = 7s
    goto 0x0000CC
0x0000A4:
    self.papyrus = (instance_create[]:int32 (var 1026s) (var 60s) (var 100s))
0x0000CC:
    push 1316s
    stog.sprite_index* = (int32 self.papyrus)
    [obj_mainchara].cutscene = 1s
0x0000F0:
    exit
