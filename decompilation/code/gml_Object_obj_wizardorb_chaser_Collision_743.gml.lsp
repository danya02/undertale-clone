0x000000:
    if !(== self.active 1s) goto 0x000028
0x000014:
    push (== self.heal 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000064
0x000030:
    call (scr_damagestandard[]:int32 (var 0s) (var 0s) (var 0s) (var 3s) (var 0s))
0x000064:
    if !(== self.heal 1s) goto 0x000188
0x000078:
    call (snd_play[]:int32 (var 109s))
    if !(< global.hp global.maxhp) goto 0x0000E4
0x0000A4:
    global.hp = (+ global.hp 6s)
    if !(> global.hp global.maxhp) goto 0x0000E4
0x0000D4:
    global.hp = global.maxhp
0x0000E4:
    push -5s
    if !(!= 393s:flag 0s) goto 0x000130
0x000100:
    push -5s
    call (caster_free[]:int32 393s:flag)
    stog.flag[393s] = 0s
0x000130:
    call (caster_resume[]:int32 (var -3s))
    global.turntimer = -1s
    global.mnfight = 3s
    global.myfight = -1s
    pushenv (int32 self.object_index) 0x000184
0x000178:
    call (instance_destroy[]:int32 )
0x000184:
    popenv 0x000178
0x000188:
    exit
