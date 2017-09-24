0x000000:
    if !(== self.lafftrax 0s) goto 0x000044
0x000014:
    call (caster_play[]:int32 (var 1s) (var 1s) self.rshot)
    self.sprite_index = 1356s
0x000044:
    if !(== self.lafftrax 1s) goto 0x000088
0x000058:
    call (caster_play[]:int32 (var 1s) (var 1s) self.rshot)
    self.sprite_index = 1358s
0x000088:
    self.conversation = 17s
0x000094:
    exit
