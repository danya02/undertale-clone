0x000000:
    self.vspeed = 0s
    self.hspeed = 0s
    self.gravity = 0s
    self.x = self.xprevious
    self.y = self.yprevious
    stog.alarm[1s] = 15s
    if !(bool (instance_exists[]:int32 (var 184s))) goto 0x000088
0x000070:
    pushenv 184s 0x000084
0x000078:
    call (instance_destroy[]:int32 )
0x000084:
    popenv 0x000078
0x000088:
    call (snd_play[]:int32 (var 106s))
    global.hshake = 3s
    global.shakespeed = 2s
    global.vshake = 0s
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
    if !(== (scr_monstersum[]:int32 ) 1s) goto 0x00010C
0x0000F8:
    stog.alarm[1s] = 4s
0x00010C:
    exit
