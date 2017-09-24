0x000000:
    if !(== self.green 0s) goto 0x000020
0x000014:
    call (scr_damagestandard_x[]:int32 )
0x000020:
    if !(== self.green 1s) goto 0x0000F4
0x000034:
    call (instance_destroy[]:int32 )
    call (snd_play[]:int32 (var 155s))
    if !(< global.hp global.maxhp) goto 0x000084
0x00006C:
    global.hp = (+ global.hp 1s)
0x000084:
    pushenv 208s 0x0000B8
0x00008C:
    if !(== self.eat 1s) goto 0x0000B8
0x0000A0:
    self.ate = 1s
    self.mercymod = 90s
0x0000B8:
    popenv 0x00008C
0x0000BC:
    pushenv 597s 0x0000F0
0x0000C4:
    if !(== self.eat 1s) goto 0x0000F0
0x0000D8:
    self.ate = 1s
    self.mercymod = 90s
0x0000F0:
    popenv 0x0000C4
0x0000F4:
    exit
