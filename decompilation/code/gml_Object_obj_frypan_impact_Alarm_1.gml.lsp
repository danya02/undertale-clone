0x000000:
    pushenv 730s 0x000030
0x000008:
    if !(bool (instance_exists[]:int32 (var 731s))) goto 0x000030
0x000020:
    self.image_blend = 731.image_blend
0x000030:
    popenv 0x000008
0x000034:
    if !(== self.crit 1s) goto 0x00005C
0x000048:
    call (snd_play[]:int32 (var 117s))
0x00005C:
    exit
