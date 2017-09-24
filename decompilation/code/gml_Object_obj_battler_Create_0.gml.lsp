0x000000:
    global.interact = 3s
    stog.alarm[2s] = 30s
    stog.alarm[4s] = 1s
    stog.flag[201s] = global.kills
    self.heartdraw = 0s
    self.on = 0s
    self.clap = 0s
    self.depp = -600s
    self.claptimer = 2s
    push -5s
    if !(== 15s:flag 0s) goto 0x0000D4
0x0000A4:
    call (caster_set_volume[]:int32 (var 0s) global.currentsong)
    call (caster_pause[]:int32 global.currentsong)
0x0000D4:
    self.tb = (instance_create[]:int32 (var 146s) (var 0s) (var 0s))
0x0000FC:
    exit
