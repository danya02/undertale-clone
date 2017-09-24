0x000000:
    global.interact = 4s
    global.phasing = 1s
    if !(== self.room 24s) goto 0x000050
0x00002C:
    push -5s
    stog.flag[(+ 51s:flag 1s)] = 51s
0x000050:
    stog.alarm[1s] = 1s
    stog.alarm[2s] = 2s
    if !(== self.sd_noise 0s) goto 0x0000B8
0x00008C:
    call (snd_play[]:int32 (var 134s))
    pushenv 978s 0x0000B4
0x0000A8:
    self.sd_noise = 1s
0x0000B4:
    popenv 0x0000A8
0x0000B8:
    exit
