0x000000:
    self.x = self.idealx
    self.y = self.idealy
    self.w = self.sprite_width
    self.h = self.sprite_height
    if !(< 743.x (+ self.x 4s)) goto 0x000110
0x000060:
    if !(> self.x self.maxx) goto 0x0000D0
0x000078:
    self.idealx = (- self.idealx 0.5d)
    self.x = (- self.x 0.5d)
    call (event_user[]:int32 (var 0s))
    goto 0x0000F0
0x0000D0:
    self.x = self.maxx
    self.idealx = self.maxx
0x0000F0:
    [obj_heart].x = (ceil[]:int32 (+ self.x 5s))
0x000110:
    if !(< 743.y (+ self.y 4s)) goto 0x000148
0x000130:
    [obj_heart].y = (+ self.y 4s)
0x000148:
    if !(> 743.x (- (+ self.x self.w) 16s)) goto 0x000198
0x000174:
    [obj_heart].x = (- (+ self.x self.w) 16s)
0x000198:
    if !(> 743.y (- (+ self.y self.h) 16s)) goto 0x00027C
0x0001C4:
    if !(< self.y self.maxy) goto 0x0001F4
0x0001DC:
    push (== self.x self.maxx)
    goto 0x0001F8
0x0001F4:
    push 0s
0x0001F8:
    if !pop goto 0x000250
0x0001FC:
    self.idealy = (+ self.idealy 0.5d)
    self.y = (+ self.y 0.5d)
    call (event_user[]:int32 (var 0s))
0x000250:
    [obj_heart].y = (floor[]:int32 (- (+ self.y self.h) 17s))
0x00027C:
    exit
