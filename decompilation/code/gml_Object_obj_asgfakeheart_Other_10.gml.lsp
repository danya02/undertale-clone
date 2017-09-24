0x000000:
    self.sprite_index = 621s
    self.x = (- self.x 2s)
    stog.alarm[1s] = 40s
    self.shake = 0s
    call (snd_play[]:int32 (var 31s))
0x000058:
    exit
