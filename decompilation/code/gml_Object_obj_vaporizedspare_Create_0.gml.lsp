0x000000:
    self.sprite_index = global.monstersprite
    self.line = 0s
    self.finished = 0s
    self.linefriended = 0s
    self.ht = (sprite_get_height[]:int32 self.sprite_index)
    self.wd = (sprite_get_width[]:int32 self.sprite_index)
    self.myvapor = global.vaporspeed
    if !(== self.myvapor 0s) goto 0x00009C
0x000088:
    call (snd_play[]:int32 (var 91s))
0x00009C:
    self.fileplace = (+ "data/monster/" (string[]:int32 global.monstersprite))
    self.file = (file_text_open_read[]:int32 self.fileplace)
    call (action_set_alarm[]:int32 (var 0s) (var 2s))
0x0000F4:
    exit
