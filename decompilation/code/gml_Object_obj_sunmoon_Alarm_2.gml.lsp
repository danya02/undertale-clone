0x000000:
    call (instance_create[]:int32 (var 372s) (+ self.y 14s) (+ self.x 14s))
    stog.alarm[2s] = 1s
    self.sum = (scr_monstersum[]:int32 )
    if !(> self.sum 1s) goto 0x00008C
0x00006C:
    stog.alarm[2s] = (choose[]:int32 (var 3s))
0x00008C:
    exit
