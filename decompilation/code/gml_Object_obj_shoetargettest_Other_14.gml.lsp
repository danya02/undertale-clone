0x000000:
    self.newtarg = (instance_create[]:int32 (var 721s) self.y (- self.x self.wherex))
    push 10s
    stog.hspeed* = (int32 self.newtarg)
    if !(== global.weapon 49s) goto 0x000078
0x000060:
    push 15s
    stog.hspeed* = (int32 self.newtarg)
0x000078:
    push (- (instance_number[]:int32 (var 719s)) 1s)
    stog.priority* = (int32 self.newtarg)
    push self.fatalx
    stog.fatalx* = (int32 self.newtarg)
0x0000C0:
    exit
