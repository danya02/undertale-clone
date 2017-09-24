0x000000:
    if !(== self.myinteract 1s) goto 0x000098
0x000014:
    if !(== (snd_isplaying[]:int32 (var 112s)) 0s) goto 0x000044
0x000030:
    call (snd_play[]:int32 (var 112s))
0x000044:
    if !(== self.sprite_index 1597s) goto 0x000074
0x000058:
    self.sprite_index = 1598s
    self.glow = 1s
    goto 0x00008C
0x000074:
    self.sprite_index = 1597s
    self.glow = 0s
0x00008C:
    self.myinteract = 0s
0x000098:
    if !(bool (instance_exists[]:int32 (var 1106s))) goto 0x0000DC
0x0000B0:
    if !(== self.glow 1s) goto 0x0000DC
0x0000C4:
    [obj_torchpuzzle].h = (+ 1106.h 1s)
0x0000DC:
    exit
