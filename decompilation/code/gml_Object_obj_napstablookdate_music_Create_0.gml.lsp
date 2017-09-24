0x000000:
    push -5s
    if !(== 7s:flag 1s) goto 0x00002C
0x00001C:
    call (instance_destroy[]:int32 )
    exit
0x00002C:
    if !(< (instance_number[]:int32 self.object_index) 2s) goto 0x0000BC
0x000048:
    self.spoopy = (caster_load[]:int32 (var "music/spoopy.ogg"))
    self.spoopywave = (caster_load[]:int32 (var "music/spoopy_wave.ogg"))
    self.spoopyholiday = (caster_load[]:int32 (var "music/spoopy_holiday.ogg"))
    self.napstachords = (caster_load[]:int32 (var "music/napstachords.ogg"))
    goto 0x0000C8
0x0000BC:
    call (instance_destroy[]:int32 )
0x0000C8:
    self.songplaying = 0s
    self.fadeout = 0s
    self.curvol = 0s
    self.con = 0s
0x0000F8:
    exit
