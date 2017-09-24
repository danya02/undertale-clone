0x000000:
    if !(< global.turntimer 1s) goto 0x000038
0x000014:
    global.turntimer = -1s
    global.mnfight = 3s
    call (instance_destroy[]:int32 )
0x000038:
    push self.x
    if !(< -5s (- 0s:idealborder 40s)) goto 0x00006C
0x000060:
    call (instance_destroy[]:int32 )
0x00006C:
    global.turntimer = (+ global.turntimer 1s)
0x000084:
    exit
