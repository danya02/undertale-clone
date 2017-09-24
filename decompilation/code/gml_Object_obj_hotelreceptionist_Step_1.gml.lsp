0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_npc_anim[]:int32 )
    if !(== self.con 1s) goto 0x000070
0x000054:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000074
0x000070:
    push 0s
0x000074:
    if !pop goto 0x00019C
0x000078:
    global.hp = global.maxhp
    if !(== global.lv 1s) goto 0x0000A8
0x00009C:
    global.hp = 30s
0x0000A8:
    if !(== global.lv 2s) goto 0x0000C8
0x0000BC:
    global.hp = 32s
0x0000C8:
    if !(== global.lv 3s) goto 0x0000E8
0x0000DC:
    global.hp = 34s
0x0000E8:
    if !(== global.lv 4s) goto 0x000108
0x0000FC:
    global.hp = 36s
0x000108:
    if !(== global.lv 5s) goto 0x000128
0x00011C:
    global.hp = 38s
0x000128:
    global.interact = 1s
    self.con = 2s
    stog.alarm[4s] = 30s
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
0x00019C:
    if !(== self.con 2s) goto 0x0001BC
0x0001B0:
    global.interact = 1s
0x0001BC:
    if !(== self.con 3s) goto 0x000228
0x0001D0:
    call (caster_free[]:int32 (var -3s))
    global.entrance = 1s
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    call (room_goto[]:int32 (var 186s))
0x000228:
    exit
