0x000000:
    if !(== self.inactive 0s) goto 0x000148
0x000014:
    if !(== self.x 0s) goto 0x000064
0x000028:
    self.iii = (instance_create[]:int32 (var 611s) (+ self.y 5s) (+ self.x 22s))
    goto 0x00009C
0x000064:
    self.iii = (instance_create[]:int32 (var 613s) (+ self.y 5s) (+ self.x 22s))
0x00009C:
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x00011C
0x0000B4:
    if !(< global.hp 8s) goto 0x0000E8
0x0000C8:
    pushenv (int32 self.iii) 0x0000E4
0x0000D8:
    self.dmg = 2s
0x0000E4:
    popenv 0x0000D8
0x0000E8:
    if !(< global.hp 6s) goto 0x00011C
0x0000FC:
    pushenv (int32 self.iii) 0x000118
0x00010C:
    self.dmg = 1s
0x000118:
    popenv 0x00010C
0x00011C:
    call (snd_play[]:int32 (var 106s))
    stog.alarm[0s] = 4s
    goto 0x00015C
0x000148:
    stog.alarm[1s] = 70s
0x00015C:
    if !(< global.hp 8s) goto 0x00017C
0x000170:
    self.dmg = 2s
0x00017C:
    if !(< global.hp 6s) goto 0x00019C
0x000190:
    self.dmg = 1s
0x00019C:
    exit
