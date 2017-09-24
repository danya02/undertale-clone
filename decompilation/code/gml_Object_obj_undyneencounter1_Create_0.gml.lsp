0x000000:
    [obj_mainchara].cutscene = 1s
    stog.view_yview[0s] = 60s
    self.cn = 0s
    self.active = 0s
    self.ld = 0s
    if !(< global.plot 110s) goto 0x00018C
0x000058:
    self.undyne = (instance_create[]:int32 (var 1117s) (var 14s) self.x)
    push 1436s
    stog.dsprite* = (int32 self.undyne)
    push 0s
    stog.image_alpha* = (int32 self.undyne)
    push 1436s
    stog.sprite_index* = (int32 self.undyne)
    self.stk = (instance_create[]:int32 (var 1093s) (var 0s) (var 0s))
    push self.undyne
    stog.subject* = (int32 self.stk)
    push 1443s
    stog.sprite_index* = (int32 self.stk)
    push 0s
    stog.image_alpha* = (int32 self.stk)
    self.active = 1s
    self.usong = (caster_load[]:int32 (var "music/undynefast.ogg"))
    self.ushock = (caster_load[]:int32 (var "music/fearsting.ogg"))
    self.ld = 1s
0x00018C:
    self.stopper = 0s
0x000198:
    exit
