0x000000:
    stog.alarm[0s] = 1s
    self.site = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    self.down = 0s
    self.image_speed = 0s
    self.countdown = (instance_number[]:int32 self.object_index)
    if !(<= self.countdown 1s) goto 0x000094
0x000088:
    self.image_index = 1s
0x000094:
    self.speedmod = 1s
    self.alphoid = 0s
    self.image_alpha = 0s
    self.object0 = 263s
    self.dmg = 7s
0x0000D0:
    exit
