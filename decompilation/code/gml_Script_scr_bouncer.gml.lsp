0x000000:
    self.bouncer = (instance_create[]:int32 (var 110s) self.y self.x)
    push self.argument0
    stog.myobject* = (int32 self.bouncer)
    push self.argument1
    stog.bounceamt* = (int32 self.bouncer)
    push self.argument2
    stog.grav* = (int32 self.bouncer)
0x00007C:
    exit
