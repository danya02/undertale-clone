0x000000:
    if !(== global.interact 0s) goto 0x000028
0x000014:
    push (== self.con 1s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000138
0x000030:
    global.msc = 0s
    if !(== self.room 137s) goto 0x000068
0x000050:
    stog.msg[0s] = "* (The cup of water returned&  to the water cooler.)/%%"
0x000068:
    if !(== self.room 138s) goto 0x000094
0x00007C:
    stog.msg[0s] = "* (The cup of water was erased&  by a mysterious force.)/%%"
0x000094:
    if !(== self.room 139s) goto 0x0000D8
0x0000A8:
    stog.msg[0s] = "* (The water evaporated from&  the heat.)/"
    stog.msg[1s] = "* (The cup evaporated^1, too.)/%%"
0x0000D8:
    pushenv 1570s 0x000110
0x0000E0:
    self.dsprite = 1043s
    self.rsprite = 1045s
    self.usprite = 1044s
    self.lsprite = 1046s
0x000110:
    popenv 0x0000E0
0x000114:
    self.con = 2s
    call (scr_regulartext[]:int32 )
    global.interact = 1s
0x000138:
    if !(== self.con 2s) goto 0x000168
0x00014C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00016C
0x000168:
    push 0s
0x00016C:
    if !pop goto 0x00019C
0x000170:
    stog.flag[366s] = 0s
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x00019C:
    exit
