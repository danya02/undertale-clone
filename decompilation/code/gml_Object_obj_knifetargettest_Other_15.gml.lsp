0x000000:
    self.newtarg = (instance_create[]:int32 (var 722s) self.y (+ (+ self.x self.sprite_width) self.wherex))
    push -12s
    stog.hspeed* = (int32 self.newtarg)
    push (- (instance_number[]:int32 (var 719s)) 1s)
    stog.priority* = (int32 self.newtarg)
    push self.fatalx
    stog.fatalx* = (int32 self.newtarg)
0x0000A0:
    exit
