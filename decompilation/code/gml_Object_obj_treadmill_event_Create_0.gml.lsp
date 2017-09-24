0x000000:
    self.con = 0s
    push -5s
    if !(< 497s:flag 2s) goto 0x00013C
0x000028:
    stog.flag[497s] = 2s
    [obj_mainchara].visible = 0s
    [obj_mainchara].x = 99s
    [obj_mainchara].y = 136s
    self.mc = (scr_marker[]:int32 1570.sprite_index (var 112s) 1570.x)
    push 1000s
    stog.depth* = (int32 self.mc)
    self.pap = (scr_marker[]:int32 (var 1325s) (var 190s) (var 75s))
    push 0s
    stog.image_speed* = (int32 self.pap)
    push 80s
    stog.depth* = (int32 self.pap)
    global.interact = 1s
    self.con = 1s
    stog.alarm[4s] = 45s
    call (snd_play[]:int32 (var 106s))
    goto 0x000148
0x00013C:
    call (instance_destroy[]:int32 )
0x000148:
    exit
