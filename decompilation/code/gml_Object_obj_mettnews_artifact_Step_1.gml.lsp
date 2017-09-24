0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== self.con 2s) goto 0x000104
0x000048:
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) (var 1570s) (+ (+ self.y self.sprite_height) 20s) (+ self.x (/ self.sprite_width (double 2s))) (- (+ self.y self.sprite_height) 5s) (+ self.x (/ self.sprite_width (double 2s))))) goto 0x0000F8
0x0000E8:
    self.con = 3s
    goto 0x000104
0x0000F8:
    self.con = 20s
0x000104:
    if !(== self.con 3s) goto 0x00018C
0x000118:
    if !(< 1570.x self.x) goto 0x000160
0x000130:
    self.hspeed = 2s
    stog.alarm[4s] = 9s
    self.con = 4s
    goto 0x00018C
0x000160:
    self.hspeed = -2s
    stog.alarm[4s] = 9s
    self.con = 4s
0x00018C:
    if !(== self.con 5s) goto 0x0001B8
0x0001A0:
    self.hspeed = 0s
    self.con = 20s
0x0001B8:
    if !(== self.gtfo 1s) goto 0x0001D8
0x0001CC:
    self.vspeed = 5s
0x0001D8:
    exit
