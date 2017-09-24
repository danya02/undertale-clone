0x000000:
    if !(== self.con 1s) goto 0x000088
0x000014:
    self.nowx = self.x
    self.nowy = self.y
    self.image_speed = 0.25d
    if !(>= self.image_index 7s) goto 0x000088
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
    if !(== self.con 4s) goto 0x000140
0x0000D0:
    self.x = (- (+ self.nowx (random[]:int32 (var 3s))) (random[]:int32 (var 3s)))
    self.y = (- (+ self.nowy (random[]:int32 (var 3s))) (random[]:int32 (var 3s)))
0x000140:
    if !(== self.con 5s) goto 0x000194
0x000154:
    self.con = 6s
    self.vspeed = -6s
    stog.alarm[5s] = 15s
    stog.alarm[6s] = 5s
0x000194:
    push self.y
    if !(< -5s 2s:idealborder) goto 0x0001F4
0x0001B4:
    self.y = (+ self.y 6s)
    if !(< self.vspeed 0s) goto 0x0001F4
0x0001E0:
    self.vspeed = (- self.vspeed)
0x0001F4:
    push self.y
    if !(> -5s (+ (- 3s:idealborder self.sprite_height) 5s)) goto 0x000268
0x000228:
    self.y = (- self.y 6s)
    if !(> self.vspeed 0s) goto 0x000268
0x000254:
    self.vspeed = (- self.vspeed)
0x000268:
    if !(< global.turntimer 1s) goto 0x0002A0
0x00027C:
    global.turntimer = -1s
    global.mnfight = 3s
    call (instance_destroy[]:int32 )
0x0002A0:
    exit
