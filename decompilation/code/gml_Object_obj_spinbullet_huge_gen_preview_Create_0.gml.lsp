0x000000:
    self.image_alpha = 0s
    self.offon = 0s
    self.x = (+ 1581.x 8s)
    self.y = (+ 1581.y 8s)
    if !(> (+ self.y 60s) self.room_height) goto 0x000098
0x000068:
    self.y = (- self.y (- (+ self.y 60s) self.room_height))
0x000098:
    self.bonus = 0s
    if !(== (instance_number[]:int32 self.object_index) 1s) goto 0x0000CC
0x0000C0:
    self.bonus = 3s
0x0000CC:
    stog.alarm[2s] = 2s
    call (snd_stop[]:int32 (var 163s))
    call (snd_play[]:int32 (var 163s))
0x000108:
    exit
