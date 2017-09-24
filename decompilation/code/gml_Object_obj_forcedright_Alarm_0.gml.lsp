0x000000:
    global.facing = 0s
    [obj_mainchara].hspeed = 0s
    [obj_mainchara].image_index = 0s
    [obj_mainchara].image_speed = 0s
    self.t = 2s
    self.dog1 = (instance_create[]:int32 (var 996s) (- self.room_height 40s) (- 1570.x 34s))
    self.dog2 = (instance_create[]:int32 (var 997s) (- self.room_height 40s) (+ 1570.x 20s))
    push -1s
    stog.vspeed* = (int32 self.dog1)
    push -1s
    stog.vspeed* = (int32 self.dog2)
    stog.alarm[2s] = 142s
0x0000F0:
    exit
