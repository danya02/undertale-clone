0x000000:
    self.flasher = (+ self.flasher 1s)
    if !(== self.drawblack 1s) goto 0x00003C
0x00002C:
    self.drawblack = 0s
    goto 0x000048
0x00003C:
    self.drawblack = 1s
0x000048:
    stog.alarm[2s] = 2s
    call (snd_play[]:int32 (var 106s))
    if !(> self.flasher 5s) goto 0x000098
0x000084:
    push (== self.drawblack 0s)
    goto 0x00009C
0x000098:
    push 0s
0x00009C:
    if !pop goto 0x0000C8
0x0000A0:
    stog.alarm[2s] = -1s
    call (event_user[]:int32 (var 0s))
0x0000C8:
    exit
