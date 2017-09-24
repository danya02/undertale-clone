0x000000:
    self.using = 7s
    call (move_snap[]:int32 (var 20s) (var 20s))
    self.block = (instance_position[]:int32 (var 820s) (+ self.y 10s) (+ self.x 10s))
    if !(!= self.block -4s) goto 0x0000EC
0x000074:
    if !(bool (instance_exists[]:int32 (var 1111s))) goto 0x0000BC
0x00008C:
    [obj_bellblossom].block2 = self.block
    pushenv 1111s 0x0000B8
0x0000A4:
    call (event_user[]:int32 (var 0s))
0x0000B8:
    popenv 0x0000A4
0x0000BC:
    push 0s
    stog.x* = (int32 self.block)
    push 0s
    stog.y* = (int32 self.block)
0x0000EC:
    self.using = 99s
    self.image_speed = 0s
    self.image_index = 6s
    self.depth = 800000
0x000120:
    exit
