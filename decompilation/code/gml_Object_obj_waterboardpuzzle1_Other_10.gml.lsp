0x000000:
    self.block = (instance_position[]:int32 (var 820s) (+ self.yy 10s) (+ self.xx 10s))
    if !(!= self.block -4s) goto 0x00007C
0x00004C:
    push 0s
    stog.x* = (int32 self.block)
    push 0s
    stog.y* = (int32 self.block)
0x00007C:
    self.new = (instance_create[]:int32 (var 1363s) self.yy self.xx)
    push 850000
    stog.depth* = (int32 self.new)
    push 1552s
    stog.sprite_index* = (int32 self.new)
    push 0s
    stog.image_speed* = (int32 self.new)
    push 6s
    stog.image_index* = (int32 self.new)
    push 1s
    stog.visible* = (int32 self.new)
    push 0s
    stog.image_speed* = (int32 self.new)
0x000138:
    exit
