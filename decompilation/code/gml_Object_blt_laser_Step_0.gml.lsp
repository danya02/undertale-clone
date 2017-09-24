0x000000:
    if !(< global.turntimer 1s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    self.gravityincrement = (+ self.gravityincrement 1s)
0x000038:
    exit
