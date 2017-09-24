0x000000:
    call (snd_play[]:int32 (var 106s))
    push -1s
    if !(== 1s:background_visible 1s) goto 0x000084
0x000030:
    stog.background_visible[0s] = 1s
    stog.background_visible[1s] = 0s
    stog.idealvolume[0s] = 0s
    stog.idealvolume[1s] = 1s
    goto 0x0000E8
0x000084:
    stog.background_visible[0s] = 0s
    stog.background_visible[2s] = 0s
    stog.background_visible[1s] = 1s
    stog.idealvolume[0s] = 1s
    stog.idealvolume[1s] = 0s
0x0000E8:
    self.myinteract = 0s
    global.interact = 0s
0x000100:
    exit
