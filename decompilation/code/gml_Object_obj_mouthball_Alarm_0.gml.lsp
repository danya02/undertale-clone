0x000000:
    self.mb = (instance_create[]:int32 (var 1632s) self.y self.x)
    push (- self.num 1s)
    stog.num* = (int32 self.mb)
    push self.id
    stog.parent* = (int32 self.mb)
    push (- self.size 0.05d)
    stog.size* = (int32 self.mb)
    if !(> (int32 self.mb):num 0s) goto 0x0000D0
0x0000B4:
    push 1s
    push (int32 self.mb)
    stog.alarm[] = 0s
0x0000D0:
    self.visible = 1s
0x0000DC:
    exit
