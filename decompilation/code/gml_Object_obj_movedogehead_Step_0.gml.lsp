0x000000:
    if !(== self.excited 1s) goto 0x000030
0x000014:
    push -1s
    push (> 0s:alarm 1s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000130
0x000038:
    self.image_speed = 0.1d
    self.sprite_index = 220s
    if !(bool (instance_exists[]:int32 (var 247s))) goto 0x00012C
0x000070:
    if (== 247.mercymod 200s) goto 0x0000B4
0x000084:
    if !(== 247.mercymod 201s) goto 0x0000AC
0x000098:
    push (== self.specialx 0s)
    goto 0x0000B0
0x0000AC:
    push 0s
0x0000B0:
    goto 0x0000B8
0x0000B4:
    push 1s
0x0000B8:
    if !pop goto 0x0000DC
0x0000BC:
    stog.alarm[3s] = 4s
    self.specialx = 1s
0x0000DC:
    if !(> 247.mercymod 998s) goto 0x000104
0x0000F0:
    push (== self.specialx 0s)
    goto 0x000108
0x000104:
    push 0s
0x000108:
    if !pop goto 0x00012C
0x00010C:
    stog.alarm[2s] = 4s
    self.specialx = 1s
0x00012C:
    goto 0x000150
0x000130:
    self.image_speed = 0.33335d
    self.sprite_index = 219s
0x000150:
    if !(== self.excited 3s) goto 0x000170
0x000164:
    self.excited = 1s
0x000170:
    exit
