0x000000:
    self.d = 0s
    self.housesprite = (scr_marker[]:int32 (var 1480s) (var -24s) (var 30s))
    pushenv (int32 self.housesprite) 0x000054
0x000044:
    self.depth = 950000
0x000054:
    popenv 0x000044
0x000058:
    self.door = (scr_marker[]:int32 (var 1433s) (var 40s) (var 130s))
    pushenv (int32 self.door) 0x0000A0
0x000090:
    self.depth = 900000
0x0000A0:
    popenv 0x000090
0x0000A4:
    pushenv (int32 self.door) 0x0000C0
0x0000B4:
    self.image_speed = 0s
0x0000C0:
    popenv 0x0000B4
0x0000C4:
    push -5s
    if !(>= 389s:flag 2s) goto 0x000148
0x0000E0:
    pushenv (int32 self.housesprite) 0x0000FC
0x0000F0:
    self.sprite_index = 1481s
0x0000FC:
    popenv 0x0000F0
0x000100:
    pushenv (int32 self.housesprite) 0x000124
0x000110:
    self.image_speed = 0.2d
0x000124:
    popenv 0x000110
0x000128:
    pushenv (int32 self.door) 0x000144
0x000138:
    self.visible = 0s
0x000144:
    popenv 0x000138
0x000148:
    push -5s
    if !(== 354s:flag 2s) goto 0x0001B8
0x000164:
    push -5s
    if !(== 67s:flag 0s) goto 0x0001B8
0x000180:
    push -5s
    if !(>= 88s:flag 3s) goto 0x0001B8
0x00019C:
    push -5s
    push (<= 389s:flag 2s)
    goto 0x0001BC
0x0001B8:
    push 0s
0x0001BC:
    if !pop goto 0x000208
0x0001C0:
    self.papyrus = (instance_create[]:int32 (var 1026s) (var 80s) (var 140s))
    pushenv (int32 self.papyrus) 0x000204
0x0001F8:
    self.sprite_index = 1316s
0x000204:
    popenv 0x0001F8
0x000208:
    if !(< global.plot 122s) goto 0x000228
0x00021C:
    self.d = 1s
0x000228:
    push -5s
    if !(< 354s:flag 2s) goto 0x000250
0x000244:
    self.d = 1s
0x000250:
    push -5s
    if !(== 67s:flag 1s) goto 0x000278
0x00026C:
    self.d = 1s
0x000278:
    push -5s
    if !(< 88s:flag 4s) goto 0x0002A0
0x000294:
    self.d = 1s
0x0002A0:
    push -5s
    if !(== 350s:flag 1s) goto 0x0002C8
0x0002BC:
    self.d = 1s
0x0002C8:
    push -5s
    if !(== 350s:flag 2s) goto 0x0002F0
0x0002E4:
    self.d = 1s
0x0002F0:
    push -5s
    if !(>= 389s:flag 2s) goto 0x000318
0x00030C:
    self.d = 1s
0x000318:
    if !(> global.kills 0s) goto 0x000338
0x00032C:
    self.d = 1s
0x000338:
    if !(== self.d 1s) goto 0x00035C
0x00034C:
    call (instance_destroy[]:int32 )
    exit
0x00035C:
    if !(== self.d 0s) goto 0x0003EC
0x000370:
    stog.flag[20s] = 0s
    global.currentsong = (caster_load[]:int32 (var "music/undynepiano.ogg"))
    call (caster_loop[]:int32 (var 0.8d) (var 0.8d) global.currentsong)
    pushenv 1343s 0x0003E8
0x0003DC:
    call (instance_destroy[]:int32 )
0x0003E8:
    popenv 0x0003DC
0x0003EC:
    self.con = 0s
0x0003F8:
    exit
