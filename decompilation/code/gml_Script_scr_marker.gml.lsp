0x000000:
    self.thismarker = (instance_create[]:int32 (var 1363s) self.argument1 self.argument0)
    push 1s
    stog.visible* = (int32 self.thismarker)
    push 0s
    stog.image_speed* = (int32 self.thismarker)
    push self.argument2
    stog.sprite_index* = (int32 self.thismarker)
    ret var self.thismarker
0x000080:
    exit
