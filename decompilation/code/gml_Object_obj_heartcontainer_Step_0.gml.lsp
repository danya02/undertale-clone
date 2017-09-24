0x000000:
    if !(>= self.image_index 6s) goto 0x000028
0x000014:
    push (== self.con 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x00005C
0x000030:
    self.image_speed = 0s
    self.con = 2s
    stog.alarm[4s] = 30s
0x00005C:
    if !(== self.con 3s) goto 0x00011C
0x000070:
    self.sprite_index = 1876s
    if !(== self.image_blend 16777215) goto 0x0000A0
0x000094:
    self.sprite_index = 1877s
0x0000A0:
    self.image_speed = 0.1d
    self.h = (+ self.h 1s)
    if !(>= self.h self.sprite_height) goto 0x00011C
0x0000E4:
    self.con = 4s
    if !(== self.image_blend 16777215) goto 0x00011C
0x000108:
    call (snd_play[]:int32 (var 21s))
0x00011C:
    exit
