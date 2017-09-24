0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== self.spec 0s) goto 0x000054
0x000048:
    call (scr_npc_anim[]:int32 )
0x000054:
    if !(== self.spec 1s) goto 0x000080
0x000068:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000084
0x000080:
    push 0s
0x000084:
    if !pop goto 0x00009C
0x000088:
    self.image_speed = 0.25d
0x00009C:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0000D0
0x0000B8:
    self.spec = 0s
    self.image_speed = 0s
0x0000D0:
    exit
