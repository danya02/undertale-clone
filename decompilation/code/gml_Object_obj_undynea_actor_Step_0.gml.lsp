0x000000:
    if !(== self.d 0s) goto 0x000020
0x000014:
    call (scr_depth[]:int32 )
0x000020:
    if !(== self.fun 0s) goto 0x0000D8
0x000034:
    self.myinteract = 0s
    if !(== self.speed 0s) goto 0x00006C
0x000054:
    self.image_index = 0s
    self.image_speed = 0s
0x00006C:
    if !(> self.speed 0s) goto 0x0000D8
0x000080:
    self.image_speed = 0.2d
    if (== self.image_index 1s) goto 0x0000BC
0x0000A8:
    push (== self.image_index 3s)
    goto 0x0000C0
0x0000BC:
    push 1s
0x0000C0:
    if !pop goto 0x0000D8
0x0000C4:
    call (snd_play[]:int32 (var 16s))
0x0000D8:
    if !(== self.fun 3s) goto 0x000130
0x0000EC:
    if (== self.image_index 1s) goto 0x000114
0x000100:
    push (== self.image_index 3s)
    goto 0x000118
0x000114:
    push 1s
0x000118:
    if !pop goto 0x000130
0x00011C:
    call (snd_play[]:int32 (var 16s))
0x000130:
    push -5s
    if !(== 20s:flag 5s) goto 0x000158
0x00014C:
    self.sprite_index = 1467s
0x000158:
    push -5s
    if !(== 20s:flag 6s) goto 0x000180
0x000174:
    self.sprite_index = 1463s
0x000180:
    exit
