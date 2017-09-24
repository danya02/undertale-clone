0x000000:
    if !(== self.active 1s) goto 0x0001A4
0x000014:
    self.siner = (+ self.siner 1s)
    if !(< self.r self.maxr) goto 0x00005C
0x000044:
    self.r = (+ self.r 10s)
0x00005C:
    self.i = 0s
    if !(< self.i self.num) goto 0x0001A4
0x000080:
    push -1s
    if !(bool (instance_exists[]:int32 (int32 self.i):child)) goto 0x000188
0x0000A8:
    push (+ self.x (lengthdir_x[]:int32 (+ (* (/ self.i self.num) 360s) (* self.siner 2s)) self.r))
    push -1s
    stog.x* = (int32 (int32 self.i):child)
    push (+ self.y (lengthdir_y[]:int32 (+ (* (/ self.i self.num) 360s) (* self.siner 2s)) self.r))
    push -1s
    stog.y* = (int32 (int32 self.i):child)
0x000188:
    self.i = (+ self.i 1s)
    goto 0x000068
0x0001A4:
    if !(> self.x 800s) goto 0x0001C4
0x0001B8:
    call (instance_destroy[]:int32 )
0x0001C4:
    if !(< self.x -200s) goto 0x0001E4
0x0001D8:
    call (instance_destroy[]:int32 )
0x0001E4:
    if !(> self.y 700s) goto 0x000204
0x0001F8:
    call (instance_destroy[]:int32 )
0x000204:
    if !(< self.y -200s) goto 0x000224
0x000218:
    call (instance_destroy[]:int32 )
0x000224:
    if !(> self.speed 5s) goto 0x000250
0x000238:
    self.speed = (- self.speed 1s)
0x000250:
    exit
