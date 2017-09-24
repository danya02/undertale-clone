0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(< self.con 3s) goto 0x000054
0x000048:
    call (scr_npc_anim[]:int32 )
0x000054:
    if !(== self.con 2s) goto 0x000084
0x000068:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000088
0x000084:
    push 0s
0x000088:
    if !pop goto 0x0000CC
0x00008C:
    global.interact = 1s
    self.con = 3s
    call (caster_pause[]:int32 global.currentsong)
    stog.alarm[4s] = 45s
0x0000CC:
    if !(== self.con 3s) goto 0x0000EC
0x0000E0:
    global.interact = 1s
0x0000EC:
    if !(== self.con 4s) goto 0x00014C
0x000100:
    call (snd_play[]:int32 (var 112s))
    self.sprite_index = 1948s
    self.image_index = 1s
    self.con = 5s
    stog.alarm[4s] = 30s
0x00014C:
    if !(== self.con 6s) goto 0x0001AC
0x000160:
    call (snd_play[]:int32 (var 112s))
    self.sprite_index = 1948s
    self.image_index = 2s
    self.con = 7s
    stog.alarm[4s] = 30s
0x0001AC:
    if !(== self.con 8s) goto 0x00020C
0x0001C0:
    call (snd_play[]:int32 (var 112s))
    self.sprite_index = 1948s
    self.image_index = 3s
    self.con = 9s
    stog.alarm[4s] = 30s
0x00020C:
    if !(== self.con 10s) goto 0x00026C
0x000220:
    call (snd_play[]:int32 (var 112s))
    self.sprite_index = 1949s
    self.image_index = 0s
    self.con = 11s
    stog.alarm[4s] = 45s
0x00026C:
    if !(== self.con 12s) goto 0x0002C0
0x000280:
    stog.flag[269s] = 1s
    self.con = -1s
    global.interact = 0s
    call (caster_resume[]:int32 global.currentsong)
0x0002C0:
    exit
