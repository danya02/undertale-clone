0x000000:
    self.sidedam = (instance_create[]:int32 (var 465s) (var 0s) (var 0s))
    if !(< (+ 743.x 6s) 320s) goto 0x000060
0x000044:
    push 0s
    stog.side* = (int32 self.sidedam)
    goto 0x000078
0x000060:
    push 1s
    stog.side* = (int32 self.sidedam)
0x000078:
    push 55s
    stog.len* = (int32 self.sidedam)
    push 40s
    stog.wait* = (int32 self.sidedam)
    stog.alarm[1s] = 60s
0x0000BC:
    exit
