0x000000:
    if !(< self.credno (- self.credamt 1s)) goto 0x00008C
0x000020:
    self.cb = (instance_create[]:int32 (var 1701s) self.y self.x)
    push -1s
    push (int32 self.credno):creditname
    stog.text* = (int32 self.cb)
    self.credno = (+ self.credno 1s)
0x00008C:
    exit
