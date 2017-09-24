0x000000:
    self.sprite_index = global.monstersprite
    self.line = 0s
    self.finished = 0s
    self.ht = (sprite_get_height[]:int32 self.sprite_index)
    self.wd = (sprite_get_width[]:int32 self.sprite_index)
    self.myvapor = global.vaporspeed
    self.fileplace = (+ "data/monster/" (sprite_get_name[]:int32 self.sprite_index))
    self.file = (file_text_open_write[]:int32 self.fileplace)
    if !(bool (instance_exists[]:int32 (var 189s))) goto 0x0000D4
0x0000BC:
    pushenv 189s 0x0000D0
0x0000C4:
    call (instance_destroy[]:int32 )
0x0000D0:
    popenv 0x0000C4
0x0000D4:
    call (action_set_alarm[]:int32 (var 0s) (var 2s))
0x0000F0:
    exit
