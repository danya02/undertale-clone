0x000000:
    self.bone = (instance_create[]:int32 (var 499s) (var 900s) (var 900s))
    push -5s
    push (- 3s:idealborder self.argument0)
    stog.y* = (int32 self.bone)
    push self.argument1
    stog.hspeed* = (int32 self.bone)
    push self.argument3
    stog.type* = (int32 self.bone)
    push (- 320s (* self.argument1 self.argument2))
    stog.x* = (int32 self.bone)
    push (int32 self.bone):y
    stog.yinit* = (int32 self.bone)
0x0000E8:
    exit
