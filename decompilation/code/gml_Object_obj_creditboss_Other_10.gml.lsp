0x000000:
    if !(< 1702.credno (- 1702.credamt 1s)) goto 0x00008C
0x000020:
    self.cb = (instance_create[]:int32 (var 1701s) self.y self.x)
    push 1702s
    push (int32 1702.credno):creditname
    stog.text* = (int32 self.cb)
    [obj_creditsloader].credno = (+ 1702.credno 1s)
0x00008C:
    exit
