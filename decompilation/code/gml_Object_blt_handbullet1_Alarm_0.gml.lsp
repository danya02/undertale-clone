0x000000:
    if !(== self.inactive 0s) goto 0x000130
0x000014:
    if !(== self.x1 0s) goto 0x000064
0x000028:
    self.iii = (instance_create[]:int32 (var 611s) (+ self.y 5s) (+ self.x 22s))
    goto 0x00009C
0x000064:
    self.iii = (instance_create[]:int32 (var 613s) (+ self.y 5s) (+ self.x 22s))
0x00009C:
    if !(< global.hp 8s) goto 0x0000D0
0x0000B0:
    pushenv (int32 self.iii) 0x0000CC
0x0000C0:
    self.dmg = 2s
0x0000CC:
    popenv 0x0000C0
0x0000D0:
    if !(< global.hp 6s) goto 0x000104
0x0000E4:
    pushenv (int32 self.iii) 0x000100
0x0000F4:
    self.dmg = 1s
0x000100:
    popenv 0x0000F4
0x000104:
    call (snd_play[]:int32 (var 106s))
    stog.alarm[0s] = 4s
    goto 0x000144
0x000130:
    stog.alarm[1s] = 100s
0x000144:
    if !(< global.hp 8s) goto 0x000164
0x000158:
    self.dmg = 2s
0x000164:
    if !(< global.hp 6s) goto 0x000184
0x000178:
    self.dmg = 1s
0x000184:
    exit
