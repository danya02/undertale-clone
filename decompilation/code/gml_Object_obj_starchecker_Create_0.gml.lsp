0x000000:
    self.vol = (caster_get_volume[]:int32 global.currentsong)
    call (caster_set_volume[]:int32 (/ self.vol (double 2s)) global.currentsong)
    self.xbound = self.x
    self.xbound2 = (+ self.x 320s)
    self.ybound = self.y
    self.ybound2 = (+ self.y 240s)
    self.st = (instance_create[]:int32 (var 1363s) self.y self.x)
    push 1s
    stog.visible* = (int32 self.st)
    push -10s
    stog.depth* = (int32 self.st)
    push 1472s
    stog.sprite_index* = (int32 self.st)
    push 0.2d
    stog.image_speed* = (int32 self.st)
    if !(== self.room 95s) goto 0x000140
0x000134:
    self.sprite_index = 1471s
0x000140:
    self.buffer = 0s
    stog.alarm[0s] = 2s
    self.image_speed = 0.1d
    self.dest = 0s
    self.dest_timer = 0s
0x00018C:
    exit
