0x000000:
    self.mb = (instance_create[]:int32 (var 1632s) self.y self.x)
    push (- self.num 1s)
    stog.num* = (int32 self.mb)
    push self.id
    stog.parent* = (int32 self.mb)
    push (- self.size 0.1d)
    stog.size* = (int32 self.mb)
    push (+ self.siner 1s)
    stog.siner* = (int32 self.mb)
    if !(> (int32 self.mb):num 0s) goto 0x000100
0x0000D8:
    pushenv (int32 self.mb) 0x0000FC
0x0000E8:
    stog.alarm[0s] = 1s
0x0000FC:
    popenv 0x0000E8
0x000100:
    exit
