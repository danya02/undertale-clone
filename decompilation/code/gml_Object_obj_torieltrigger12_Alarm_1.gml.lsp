0x000000:
    if !(== self.flames 0s) goto 0x000038
0x000014:
    call (instance_create[]:int32 (var 876s) 861.y 861.x)
0x000038:
    if !(> self.flames 3s) goto 0x0000B4
0x00004C:
    call (caster_free[]:int32 (var -3s))
    self.room_persistent = 1s
    stog.alarm[2s] = 34s
    global.battlegroup = 22s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    goto 0x000150
0x0000B4:
    call (caster_stop[]:int32 global.currentsong)
    self.flames = (+ self.flames 1s)
    call (snd_play[]:int32 (var 106s))
    [obj_pbflame].image_alpha = (+ 876.image_alpha 0.25d)
    stog.alarm[1s] = 10s
    if !(== self.flames 4s) goto 0x000150
0x00013C:
    stog.alarm[1s] = 30s
0x000150:
    exit
