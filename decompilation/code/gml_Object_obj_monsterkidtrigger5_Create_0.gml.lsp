0x000000:
    push -5s
    if !(< 91s:flag 4s) goto 0x00002C
0x00001C:
    self.con = 0s
    goto 0x000038
0x00002C:
    self.con = 99s
0x000038:
    if !(> global.plot 112s) goto 0x000060
0x00004C:
    call (instance_destroy[]:int32 )
    exit
    goto 0x000178
0x000060:
    if !(== global.entrance 1s) goto 0x0000EC
0x000074:
    self.mkid = (instance_create[]:int32 (var 1115s) 1570.y (- 1570.x 8s))
    push (int32 self.mkid):dsprite
    stog.sprite_index* = (int32 self.mkid)
    push 2.1d
    stog.follow* = (int32 self.mkid)
0x0000EC:
    if !(== global.entrance 2s) goto 0x000178
0x000100:
    self.mkid = (instance_create[]:int32 (var 1115s) (+ 1570.y 8s) 1570.x)
    push (int32 self.mkid):lsprite
    stog.sprite_index* = (int32 self.mkid)
    push 2.1d
    stog.follow* = (int32 self.mkid)
0x000178:
    self.image_xscale = 9s
    self.image_yscale = 9s
0x000190:
    exit
