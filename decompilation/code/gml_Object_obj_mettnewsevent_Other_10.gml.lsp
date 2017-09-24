0x000000:
    push -1s
    self.xx = 0s:view_xview
    push -1s
    self.yy = 0s:view_yview
    self.part1 = (instance_create[]:int32 (var 1227s) (+ self.yy 20s) self.xx)
    push 1788s
    stog.sprite_index* = (int32 self.part1)
    self.part2 = (instance_create[]:int32 (var 1227s) (+ self.yy 20s) (+ self.xx 93s))
    push 1789s
    stog.sprite_index* = (int32 self.part2)
    self.part3 = (instance_create[]:int32 (var 1227s) (+ self.yy 67s) (+ self.xx 93s))
    push 1790s
    stog.sprite_index* = (int32 self.part3)
    self.part4 = (instance_create[]:int32 (var 1227s) (+ self.yy 20s) (+ self.xx 221s))
    push 1791s
    stog.sprite_index* = (int32 self.part4)
    self.floorpart = (instance_create[]:int32 (var 1227s) (+ self.yy 180s) self.xx)
    push 1793s
    stog.sprite_index* = (int32 self.floorpart)
    self.logo = (instance_create[]:int32 (var 1227s) (+ self.yy 20s) (+ self.xx 60s))
    push 1794s
    stog.sprite_index* = (int32 self.logo)
    self.scaff = (instance_create[]:int32 (var 1227s) self.yy self.xx)
    push 1786s
    stog.sprite_index* = (int32 self.scaff)
    [obj_mettnews_part].depth = 200s
    self.mett = (instance_create[]:int32 (var 1223s) (- (+ self.yy 160s) 33s) (+ self.xx 236s))
    push 170s
    stog.depth* = (int32 self.mett)
    self.counter = (instance_create[]:int32 (var 1227s) (+ self.yy 160s) (+ self.xx 200s))
    push 1792s
    stog.sprite_index* = (int32 self.counter)
    push 180s
    stog.depth* = (int32 self.counter)
    self.ticker = (instance_create[]:int32 (var 1231s) (+ self.yy 200s) self.xx)
0x00033C:
    exit
