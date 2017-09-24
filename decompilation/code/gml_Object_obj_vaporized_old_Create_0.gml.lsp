0x000000:
    self.sprite_index = global.monstersprite
    self.line = 0s
    self.finished = 0s
    self.ht = (sprite_get_height[]:int32 self.sprite_index)
    self.wd = (sprite_get_width[]:int32 self.sprite_index)
    self.myvapor = global.vaporspeed
    if !(== self.myvapor 0s) goto 0x0000C0
0x00007C:
    if !(>= self.ht 70s) goto 0x0000A4
0x000090:
    push (< self.ht 180s)
    goto 0x0000A8
0x0000A4:
    push 0s
0x0000A8:
    if !pop goto 0x0000C0
0x0000AC:
    call (snd_play[]:int32 (var 91s))
0x0000C0:
    call (action_set_alarm[]:int32 (var 0s) (var 2s))
0x0000DC:
    exit
