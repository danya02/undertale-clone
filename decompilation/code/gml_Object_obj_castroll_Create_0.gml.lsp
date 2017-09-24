0x000000:
    push -5s
    if !(== 499s:flag 0s) goto 0x000248
0x00001C:
    global.cast_type = 0s
    stog.flag[499s] = 1s
    self.splitter = 0s
    if !(== self.splitter 1s) goto 0x0000FC
0x00005C:
    self.ts = (instance_create[]:int32 (var 1685s) (var 0s) (var 0s))
    pushenv (int32 self.ts) 0x0000F8
0x000094:
    self.i = 0s
    if !(< self.i 99s) goto 0x0000EC
0x0000B4:
    stog.split[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    goto 0x0000A0
0x0000EC:
    self.splitno = 0s
0x0000F8:
    popenv 0x000094
0x0000FC:
    stog.endsong[0s] = (caster_load[]:int32 (var "music/end/cast_1.ogg"))
    stog.endsong[1s] = (caster_load[]:int32 (var "music/end/cast_2.ogg"))
    stog.endsong[2s] = (caster_load[]:int32 (var "music/end/cast_3.ogg"))
    stog.endsong[3s] = (caster_load[]:int32 (var "music/end/cast_4.ogg"))
    stog.endsong[5s] = (caster_load[]:int32 (var "music/end/cast_5.ogg"))
    stog.endsong[6s] = (caster_load[]:int32 (var "music/end/cast_5.ogg"))
    stog.endsong[7s] = (caster_load[]:int32 (var "music/end/cast_6.ogg"))
    stog.endsong[8s] = (caster_load[]:int32 (var "music/end/cast_7.ogg"))
    push (var 1s)
    call (caster_play[]:int32 (var 1s) -5s 0s:endsong)
0x000248:
    self.timer = 0s
    stog.alarm[0s] = 2s
    self.active = 0s
    self.vol = 0.9d
0x000288:
    exit
