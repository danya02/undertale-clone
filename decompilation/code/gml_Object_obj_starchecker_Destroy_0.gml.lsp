0x000000:
    pushenv (int32 self.st) 0x00001C
0x000010:
    call (instance_destroy[]:int32 )
0x00001C:
    popenv 0x000010
0x000020:
    call (caster_set_volume[]:int32 self.vol global.currentsong)
    global.interact = 0s
0x000048:
    exit
