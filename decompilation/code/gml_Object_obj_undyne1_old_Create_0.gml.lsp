0x000000:
    if !(> global.plot 105s) goto 0x000024
0x000014:
    call (instance_destroy[]:int32 )
    goto 0x0000BC
0x000024:
    self.con = 0s
    self.image_yscale = 999s
    self.mkid = (instance_create[]:int32 (var 1115s) (var 100s) (var 260s))
    self.undyne = (instance_create[]:int32 (var 1117s) (var 100s) (var 500s))
    push 1455s
    stog.sprite_index* = (int32 self.undyne)
    push 1397s
    stog.sprite_index* = (int32 self.mkid)
0x0000BC:
    self.look = 0s
    self.spinagain = 0s
0x0000D4:
    exit
