0x000000:
    if !(== self.con 1s) goto 0x000088
0x000014:
    self.nowx = self.x
    self.nowy = self.y
    self.image_speed = 0.25d
    if !(>= self.image_index 3s) goto 0x000088
0x00005C:
    self.image_speed = 0s
    self.con = 2s
    stog.alarm[4s] = 10s
0x000088:
    if !(== self.con 3s) goto 0x0000BC
0x00009C:
    self.con = 4s
    stog.alarm[4s] = 15s
0x0000BC:
    if (== self.con 4s) goto 0x0000E4
0x0000D0:
    push (== self.shake 1s)
    goto 0x0000E8
0x0000E4:
    push 1s
0x0000E8:
    if !pop goto 0x00015C
0x0000EC:
    self.x = (- (+ self.nowx (random[]:int32 (var 3s))) (random[]:int32 (var 3s)))
    self.y = (- (+ self.nowy (random[]:int32 (var 3s))) (random[]:int32 (var 3s)))
0x00015C:
    if !(== self.con 5s) goto 0x0001B0
0x000170:
    stog.alarm[5s] = 1s
    self.sprite_index = 705s
    self.image_speed = 0.334d
    self.con = 6s
0x0001B0:
    self.betty = (distance_to_point[]:int32 (+ 743.y 8s) (+ 743.x 8s))
    if !(< global.turntimer 1s) goto 0x000218
0x0001F4:
    global.turntimer = -1s
    global.mnfight = 3s
    call (instance_destroy[]:int32 )
0x000218:
    exit
