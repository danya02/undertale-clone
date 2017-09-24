0x000000:
    if !(!= self.blue 3s) goto 0x00004C
0x000014:
    call (scr_damagestandard[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) self.blue)
    goto 0x0000E8
0x00004C:
    if !(bool (instance_exists[]:int32 (var 256s))) goto 0x00007C
0x000064:
    [obj_woshua].mercymod = 200s
    [obj_woshua].clean = 2s
0x00007C:
    if !(< global.hp global.maxhp) goto 0x0000D4
0x000094:
    global.hp = (+ global.hp 1s)
    if !(> global.hp global.maxhp) goto 0x0000D4
0x0000C4:
    global.hp = global.maxhp
0x0000D4:
    call (snd_play[]:int32 (var 109s))
0x0000E8:
    call (instance_destroy[]:int32 )
0x0000F4:
    exit
