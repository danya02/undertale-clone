0x000000:
    pushenv (int32 self.blconwd) 0x00001C
0x000010:
    call (instance_destroy[]:int32 )
0x00001C:
    popenv 0x000010
0x000020:
    pushenv (int32 self.blcon) 0x00003C
0x000030:
    call (instance_destroy[]:int32 )
0x00003C:
    popenv 0x000030
0x000040:
    self.talked = 0s
    self.whatiheard = -1s
    global.mnfight = 2s
    if !(== self.borderspec 0s) goto 0x000084
0x000078:
    global.border = 7s
0x000084:
    if !(== 743.sprite_index 39s) goto 0x0000B8
0x000098:
    global.border = 12s
    call (event_user[]:int32 (var 2s))
0x0000B8:
    exit
