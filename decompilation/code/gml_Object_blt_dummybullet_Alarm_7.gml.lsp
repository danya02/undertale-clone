0x000000:
    self.reds = (+ self.reds 1s)
    if !(== self.sprite_index 117s) goto 0x00003C
0x00002C:
    self.sprite_index = 112s
    goto 0x000048
0x00003C:
    self.sprite_index = 117s
0x000048:
    stog.alarm[7s] = 5s
    if !(> self.reds 4s) goto 0x0000CC
0x000070:
    call (event_user[]:int32 (var 1s))
    stog.alarm[7s] = -1s
    stog.alarm[5s] = 90s
    self.speed = 2s
    self.friction = -0.2d
0x0000CC:
    exit
