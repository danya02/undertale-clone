0x000000:
    call (scr_monsterdefeat[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    stog.monster[0s] = 1s
    pushenv 154s 0x00005C
0x000050:
    self.visible = 0s
0x00005C:
    popenv 0x000050
0x000060:
    global.xp = (+ global.xp 150s)
    call (script_execute[]:int32 (var 55s))
    global.border = 0s
    call (SCR_BORDERSETUP[]:int32 )
    pushenv 183s 0x0000B8
0x0000AC:
    call (instance_destroy[]:int32 )
0x0000B8:
    popenv 0x0000AC
0x0000BC:
    pushenv 185s 0x0000D0
0x0000C4:
    call (instance_destroy[]:int32 )
0x0000D0:
    popenv 0x0000C4
0x0000D4:
    pushenv 755s 0x0000E8
0x0000DC:
    call (instance_destroy[]:int32 )
0x0000E8:
    popenv 0x0000DC
0x0000EC:
    pushenv 757s 0x000100
0x0000F4:
    call (instance_destroy[]:int32 )
0x000100:
    popenv 0x0000F4
0x000104:
    exit
