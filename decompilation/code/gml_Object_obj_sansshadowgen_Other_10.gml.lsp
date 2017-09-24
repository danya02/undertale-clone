0x000000:
    self.shadow = 1s
    stog.alarm[0s] = 12s
    if !(== self.level 2s) goto 0x000048
0x000034:
    stog.alarm[0s] = 3s
0x000048:
    if !(== self.level 3s) goto 0x000070
0x00005C:
    stog.alarm[0s] = 3s
0x000070:
    call (caster_pause[]:int32 global.batmusic)
    pushenv 502s 0x000098
0x00008C:
    call (instance_destroy[]:int32 )
0x000098:
    popenv 0x00008C
0x00009C:
    pushenv 512s 0x0000B0
0x0000A4:
    call (instance_destroy[]:int32 )
0x0000B0:
    popenv 0x0000A4
0x0000B4:
    pushenv 500s 0x0000C8
0x0000BC:
    call (instance_destroy[]:int32 )
0x0000C8:
    popenv 0x0000BC
0x0000CC:
    pushenv 501s 0x0000E0
0x0000D4:
    call (instance_destroy[]:int32 )
0x0000E0:
    popenv 0x0000D4
0x0000E4:
    pushenv 515s 0x0000F8
0x0000EC:
    call (instance_destroy[]:int32 )
0x0000F8:
    popenv 0x0000EC
0x0000FC:
    pushenv 499s 0x000110
0x000104:
    call (instance_destroy[]:int32 )
0x000110:
    popenv 0x000104
0x000114:
    pushenv 498s 0x000128
0x00011C:
    call (instance_destroy[]:int32 )
0x000128:
    popenv 0x00011C
0x00012C:
    if !(>= self.shadow_num self.shadow_max) goto 0x000150
0x000144:
    global.border = 0s
0x000150:
    call (snd_play[]:int32 (var 106s))
    pushenv 757s 0x000178
0x00016C:
    self.visible = 0s
0x000178:
    popenv 0x00016C
0x00017C:
    exit
