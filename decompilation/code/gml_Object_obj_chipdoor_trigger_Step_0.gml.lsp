0x000000:
    if !(== self.con 1s) goto 0x000040
0x000014:
    global.interact = 1s
    pushenv 1278s 0x00003C
0x000028:
    call (event_user[]:int32 (var 1s))
0x00003C:
    popenv 0x000028
0x000040:
    if !(== self.con 2s) goto 0x0000A4
0x000054:
    call (caster_loop[]:int32 (var 1s) (var 1s) (var 131s))
    self.con = 3s
    stog.alarm[4s] = 50s
    call (scr_conshakeinit[]:int32 )
0x0000A4:
    if !(== self.con 3s) goto 0x00010C
0x0000B8:
    [obj_chipdoor_l].x = (- 1278.x 0.4d)
    [obj_chipdoor_r].x = (+ 1279.x 0.4d)
    call (scr_conshake[]:int32 (var 1s))
0x00010C:
    if !(== self.con 4s) goto 0x000184
0x000120:
    call (scr_conshakeend[]:int32 )
    call (caster_stop[]:int32 (var 131s))
    call (caster_play[]:int32 (var 1s) (var 1s) (var 123s))
    self.con = 5s
    stog.alarm[4s] = 30s
0x000184:
    if !(== self.con 6s) goto 0x000204
0x000198:
    call (caster_resume[]:int32 global.currentsong)
    if !(== self.room 148s) goto 0x0001CC
0x0001C0:
    global.plot = 133s
0x0001CC:
    if !(== self.room 171s) goto 0x0001EC
0x0001E0:
    global.plot = 164s
0x0001EC:
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x000204:
    exit
