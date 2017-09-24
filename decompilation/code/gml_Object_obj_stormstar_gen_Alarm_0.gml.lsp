0x000000:
    if !(== self.active 1s) goto 0x00008C
0x000014:
    self.st = (instance_create[]:int32 (var 581s) (- -150s (random[]:int32 (var 100s))) (+ 580s (random[]:int32 (var 700s))))
    push self.h_mode
    stog.h_mode* = (int32 self.st)
    stog.alarm[0s] = 8s
0x00008C:
    exit
