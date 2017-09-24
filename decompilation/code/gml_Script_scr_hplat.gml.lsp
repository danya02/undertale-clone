0x000000:
    self.bone = (instance_create[]:int32 (var 515s) (var 900s) (var 900s))
    push -5s
    push (- 3s:idealborder self.argument0)
    stog.y* = (int32 self.bone)
    push self.argument1
    stog.hspeed* = (int32 self.bone)
    push (- 320s (* self.argument2 self.argument1))
    stog.x* = (int32 self.bone)
    push self.argument3
    stog.len* = (int32 self.bone)
0x0000C0:
    exit
