0x000000:
    self.i = 0s
    if !(< self.i 9s) goto 0x0000B4
0x000020:
    self.blt = (instance_create[]:int32 (var 623s) (+ self.y 3s) (+ self.x 3s))
    push self.dmg
    stog.dmg* = (int32 self.blt)
    push (* self.i 40s)
    stog.direction* = (int32 self.blt)
    self.i = (+ self.i 1s)
    goto 0x00000C
0x0000B4:
    call (instance_destroy[]:int32 )
0x0000C0:
    exit
