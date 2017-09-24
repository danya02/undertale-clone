0x000000:
    self.speed = 0s
    self.nowx = self.x
    self.nowy = self.y
    self.shake = 1s
    self.betty = (distance_to_point[]:int32 (+ 743.y 8s) (+ 743.x 8s))
    if !(< (distance_to_point[]:int32 (+ 743.y 8s) (+ 743.x 8s)) 50s) goto 0x0000C0
0x00009C:
    push -1s
    stog.alarm[(+ 5s:alarm 8s)] = 5s
0x0000C0:
    exit
