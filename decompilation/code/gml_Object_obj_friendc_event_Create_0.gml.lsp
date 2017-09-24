0x000000:
    self.con = 0s
    push -5s
    if !(== 7s:flag 1s) goto 0x000044
0x000028:
    push -5s
    push (== 510s:flag 2s)
    goto 0x000048
0x000044:
    push 0s
0x000048:
    if !pop goto 0x0000DC
0x00004C:
    if !(!= (caster_is_playing[]:int32 global.currentsong) 1s) goto 0x000084
0x000068:
    push -5s
    push (== 7s:flag 1s)
    goto 0x000088
0x000084:
    push 0s
0x000088:
    if !pop goto 0x0000DC
0x00008C:
    global.currentsong = (caster_load[]:int32 (var "music/reunited.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    call (instance_destroy[]:int32 )
    exit
0x0000DC:
    push -5s
    if (== 510s:flag 0s) goto 0x000114
0x0000F8:
    push -5s
    push (== 510s:flag 2s)
    goto 0x000118
0x000114:
    push 1s
0x000118:
    if !pop goto 0x000130
0x00011C:
    call (instance_destroy[]:int32 )
    exit
    goto 0x000250
0x000130:
    global.hp = global.maxhp
    global.currentsong = (caster_load[]:int32 (var "music/reunited.ogg"))
    stog.flag[7s] = 1s
    stog.flag[287s] = 1s
    stog.flag[509s] = 0s
    global.plot = 999s
    pushenv 1311s 0x0001B8
0x0001AC:
    self.direction = 0s
0x0001B8:
    popenv 0x0001AC
0x0001BC:
    pushenv 1312s 0x0001D0
0x0001C4:
    self.direction = 0s
0x0001D0:
    popenv 0x0001C4
0x0001D4:
    pushenv 1316s 0x0001E8
0x0001DC:
    self.direction = 180s
0x0001E8:
    popenv 0x0001DC
0x0001EC:
    pushenv 1315s 0x000200
0x0001F4:
    self.direction = 180s
0x000200:
    popenv 0x0001F4
0x000204:
    global.interact = 1s
    self.con = 0.1d
    stog.alarm[4s] = 140s
    self.blk = 1s
    self.d_blk = 1s
0x000250:
    exit
