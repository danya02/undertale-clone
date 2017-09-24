0x000000:
    if !(bool (instance_exists[]:int32 (var 674s))) goto 0x000038
0x000018:
    [blt_muscbul].vspeed = (- 674.vspeed 0.04d)
0x000038:
    global.turntimer = (- global.turntimer 1s)
    self.siner = (+ self.siner 1s)
    if !(< global.turntimer 8s) goto 0x00009C
0x00007C:
    call (room_goto[]:int32 global.currentroom)
    global.invc = 0s
0x00009C:
    if !(< global.turntimer 12s) goto 0x0000D4
0x0000B0:
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
0x0000D4:
    exit
