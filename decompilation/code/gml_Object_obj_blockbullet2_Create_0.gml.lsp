0x000000:
    self.down = 0s
    if !(bool (instance_exists[]:int32 (var 264s))) goto 0x000038
0x000024:
    self.rating = 264.rating
    goto 0x000044
0x000038:
    self.rating = 10s
0x000044:
    self.image_speed = 0s
    self.countdown = (instance_number[]:int32 self.object_index)
    if !(<= self.countdown 1s) goto 0x000088
0x00007C:
    self.image_index = 1s
0x000088:
    self.part = 0s
    self.site = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    stog.alarm[0s] = 1s
    self.active = 0s
    self.speedmod = 1s
    self.alphoid = 0s
    self.image_alpha = 0s
    self.object0 = 263s
    self.dmg = 7s
0x000120:
    exit
