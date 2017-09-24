0x000000:
    pushenv -2s 0x000014
0x000008:
    call (instance_destroy[]:int32 )
0x000014:
    popenv 0x000008
0x000018:
    if !(== self.type 0s) goto 0x00003C
0x00002C:
    self.type = 1s
    goto 0x000048
0x00003C:
    self.type = 0s
0x000048:
    self.swaptimer = 3s
    self.sprite_index = 532s
    if !(< self.soundtimer 0s) goto 0x000094
0x000074:
    call (snd_play[]:int32 (var 106s))
    self.soundtimer = 2s
0x000094:
    if !(bool (instance_exists[]:int32 (var 402s))) goto 0x0000C4
0x0000AC:
    global.ratings = (+ global.ratings 5s)
0x0000C4:
    exit
