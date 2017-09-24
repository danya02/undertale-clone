0x000000:
    self.room_speed = 30s
    call (snd_play[]:int32 (var 31s))
    self.sprite_index = 45s
    self.x = (- self.x 2s)
    stog.alarm[1s] = 40s
    self.shake = 0s
0x000064:
    exit
