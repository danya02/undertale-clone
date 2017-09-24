0x000000:
    if !(== self.killed 1s) goto 0x000148
0x000014:
    stog.flag[14s] = 1s
    stog.flag[12s] = 1s
    global.vaporspeed = 0s
    global.monstersprite = self.sprite_index
    self.ddd = (instance_create[]:int32 (var 155s) self.y self.x)
    pushenv (int32 self.ddd) 0x0000A4
0x000090:
    call (scr_newvapordata[]:int32 (var 23s))
0x0000A4:
    popenv 0x000090
0x0000A8:
    push self.sprite_index
    stog.sprite_index* = (int32 self.ddd)
    push self.ht
    stog.ht* = (int32 self.ddd)
    push self.wd
    stog.wd* = (int32 self.ddd)
    push 0s
    stog.image_speed* = (int32 self.ddd)
    push 1s
    stog.image_index* = (int32 self.ddd)
    stog.monster[(int32 self.myself)] = 0s
0x000148:
    exit
