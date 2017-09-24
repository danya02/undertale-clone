0x000000:
    self.sprite_index = 179s
    if !(bool (instance_exists[]:int32 (var 187s))) goto 0x00003C
0x000024:
    pushenv 187s 0x000038
0x00002C:
    call (instance_destroy[]:int32 )
0x000038:
    popenv 0x00002C
0x00003C:
    stog.alarm[8s] = 30s
    call (caster_stop[]:int32 self.floweysong)
    call (caster_free[]:int32 self.floweysong)
0x000078:
    exit
