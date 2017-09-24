0x000000:
    call (snd_play[]:int32 (var 21s))
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    call (scr_shake[]:int32 (var 2s) (var 4s) (var 4s))
    if !(bool (instance_exists[]:int32 (var 1063s))) goto 0x000094
0x000074:
    pushenv (int32 1063.table) 0x000090
0x000084:
    self.image_index = 1s
0x000090:
    popenv 0x000084
0x000094:
    self.speed = 0s
    self.sprite_index = 1451s
    self.image_angle = (+ self.image_angle 90s)
0x0000C4:
    exit
