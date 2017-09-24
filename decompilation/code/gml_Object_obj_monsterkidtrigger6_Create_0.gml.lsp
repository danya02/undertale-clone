0x000000:
    self.con = 99999
    self.unbuffer = 0s
    self.ganer = 0s
    if !(< global.plot 112s) goto 0x0000D4
0x00003C:
    if !(== global.entrance 1s) goto 0x0000D4
0x000050:
    self.mkid = (instance_create[]:int32 (var 1115s) 1570.y (- 1570.x 8s))
    push (int32 self.mkid):dsprite
    stog.sprite_index* = (int32 self.mkid)
    push 2.1d
    stog.follow* = (int32 self.mkid)
    self.con = 0s
0x0000D4:
    if !(== global.plot 112s) goto 0x000164
0x0000E8:
    self.con = 8s
    self.mkid = (instance_create[]:int32 (var 1481s) (var 100s) (var 320s))
    push 1s
    stog.prostrate* = (int32 self.mkid)
    push 1s
    stog.fun* = (int32 self.mkid)
    push 1398s
    stog.sprite_index* = (int32 self.mkid)
0x000164:
    self.ledgewall = (instance_create[]:int32 (var 5s) (var 60s) (var 340s))
    if !(== global.entrance 1s) goto 0x0001AC
0x0001A0:
    self.side = 0s
0x0001AC:
    if !(== global.entrance 2s) goto 0x0001E4
0x0001C0:
    self.side = 1s
    push 320s
    stog.x* = (int32 self.ledgewall)
0x0001E4:
    exit
