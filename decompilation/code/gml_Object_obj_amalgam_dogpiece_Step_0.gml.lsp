0x000000:
    if !(== self.con 0s) goto 0x000084
0x000014:
    self.siner = (+ self.siner 1s)
    self.y = (+ self.y (/ (sin[]:int32 (/ self.siner self.ss)) (double 3s)))
    self.image_angle = (+ self.image_angle self.aa)
0x000084:
    if !(== self.con 1s) goto 0x000148
0x000098:
    self.xx = self.x
    self.yy = self.y
    self.newx = 1557.dx
    self.newy = 1557.dy
    self.tox = (/ (- self.newx self.x) (double 10s))
    self.toy = (/ (- self.newy self.y) (double 10s))
    self.con = 2s
    stog.alarm[4s] = 10s
0x000148:
    if !(== self.con 2s) goto 0x000194
0x00015C:
    self.x = (+ self.x self.tox)
    self.y = (+ self.y self.toy)
0x000194:
    if !(== self.con 3s) goto 0x0001B4
0x0001A8:
    call (instance_destroy[]:int32 )
0x0001B4:
    exit
