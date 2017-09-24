0x000000:
    if (<= 1s 0) goto 0x0001B4
0x000018:
    push 1s
    if !(== self.counter (* self.num self.trip)) goto 0x000054
0x00003C:
    push (< self.num self.maxnum)
    goto 0x000058
0x000054:
    push 0s
0x000058:
    if !pop goto 0x000184
0x00005C:
    self.xx = (lengthdir_x[]:int32 (+ self.add_dir (* (* (/ self.num self.maxnum) 360s) self.side)) self.radius)
    self.yy = (lengthdir_y[]:int32 (+ self.add_dir (* (* (/ self.num self.maxnum) 360s) self.side)) self.radius)
    stog.spinbullet[(int32 self.num)] = (instance_create[]:int32 (var 1648s) (+ self.centery self.yy) (+ self.centerx self.xx))
    push 2s
    push -1s
    stog.trick* = (int32 (int32 self.num):spinbullet)
    self.num = (+ self.num 1s)
0x000184:
    self.counter = (+ self.counter 1s)
    if (bool (- pop 1)) goto 0x000018
0x0001B4:
    push (- pop 1)
    pop
0x0001B8:
    exit
