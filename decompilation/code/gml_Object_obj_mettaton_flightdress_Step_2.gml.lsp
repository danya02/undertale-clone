0x000000:
    self.siner = (+ self.siner 1s)
    self.y = (+ self.y (/ (sin[]:int32 (/ self.siner (double 10s))) (double 2s)))
    if !(bool (instance_exists[]:int32 (var 1210s))) goto 0x00022C
0x00006C:
    if !(== self.middle 1s) goto 0x000188
0x000080:
    push -1s
    self.xx = 0s:view_xview
    if !(< self.xx 0s) goto 0x0000B8
0x0000AC:
    self.xx = 0s
0x0000B8:
    if !(< self.x (+ self.xx 60s)) goto 0x000120
0x0000D8:
    self.x = (+ self.x 3s)
    if !(bool (instance_exists[]:int32 (var 1205s))) goto 0x000120
0x000108:
    [obj_songwriter].x = (+ 1205.x 3s)
0x000120:
    if !(> self.x (+ self.xx 80s)) goto 0x000188
0x000140:
    self.x = (- self.x 3s)
    if !(bool (instance_exists[]:int32 (var 1205s))) goto 0x000188
0x000170:
    [obj_songwriter].x = (- 1205.x 3s)
0x000188:
    if !(== self.middle 2s) goto 0x00022C
0x00019C:
    if !(< self.xx 0s) goto 0x0001BC
0x0001B0:
    self.xx = 0s
0x0001BC:
    if !(< self.x (+ self.xx 150s)) goto 0x0001F4
0x0001DC:
    self.x = (+ self.x 3s)
0x0001F4:
    if !(> self.x (+ self.xx 170s)) goto 0x00022C
0x000214:
    self.x = (- self.x 3s)
0x00022C:
    exit
