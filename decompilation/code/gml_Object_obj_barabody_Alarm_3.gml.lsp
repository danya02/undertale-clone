0x000000:
    if !(> self.shaker 0s) goto 0x00005C
0x000014:
    stog.alarm[3s] = 8s
    call (instance_create[]:int32 (var 317s) (+ self.y 20s) (+ self.x 55s))
0x00005C:
    exit
