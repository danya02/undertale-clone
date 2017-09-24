0x000000:
    self.sprite_index = global.monstersprite
    self.line = 0s
    self.finished = 0s
    self.ht = (sprite_get_height[]:int32 self.sprite_index)
    self.wd = (sprite_get_width[]:int32 self.sprite_index)
    self.myvapor = global.vaporspeed
    if !(== self.myvapor 0s) goto 0x000090
0x00007C:
    call (snd_play[]:int32 (var 91s))
0x000090:
    self.finishedreading = 0s
    self.mydata = (scr_getvapordata[]:int32 )
    self.mychar = 0s
    self.myread = 0s
    call (action_set_alarm[]:int32 (var 0s) (var 1s))
0x0000E0:
    exit
