0x000000:
    if !(> global.plot 105s) goto 0x000024
0x000014:
    call (instance_destroy[]:int32 )
    goto 0x00017C
0x000024:
    self.con = 0s
    self.image_yscale = 999s
    self.mkid = (instance_create[]:int32 (var 1115s) (var 275s) (var 260s))
    self.undyne = (instance_create[]:int32 (var 1117s) (var 100s) (var 260s))
    push 1467s
    stog.sprite_index* = (int32 self.undyne)
    push 1397s
    stog.sprite_index* = (int32 self.mkid)
    self.papyrus = (instance_create[]:int32 (var 1162s) (var 110s) (var 60s))
    push -5s
    if !(== 67s:flag 1s) goto 0x000120
0x000100:
    pushenv (int32 self.papyrus) 0x00011C
0x000110:
    self.visible = 0s
0x00011C:
    popenv 0x000110
0x000120:
    self.stk = (instance_create[]:int32 (var 1093s) (var 0s) (var 0s))
    push self.undyne
    stog.subject* = (int32 self.stk)
    push 1443s
    stog.sprite_index* = (int32 self.stk)
0x00017C:
    self.look = 0s
    self.spinagain = 0s
    self.helltrigger = 0s
0x0001A0:
    exit
