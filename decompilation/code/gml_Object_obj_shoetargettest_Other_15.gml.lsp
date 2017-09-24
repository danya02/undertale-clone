0x000000:
    self.newtarg = (instance_create[]:int32 (var 722s) self.y (+ (+ self.x self.sprite_width) self.wherex))
    push -10s
    stog.hspeed* = (int32 self.newtarg)
    if !(== global.weapon 49s) goto 0x000084
0x00006C:
    push -15s
    stog.hspeed* = (int32 self.newtarg)
0x000084:
    push (- (instance_number[]:int32 (var 719s)) 1s)
    stog.priority* = (int32 self.newtarg)
    push self.fatalx
    stog.fatalx* = (int32 self.newtarg)
0x0000CC:
    exit
