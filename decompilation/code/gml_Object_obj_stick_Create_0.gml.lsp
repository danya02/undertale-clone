0x000000:
    if !(>= global.plot 35s) goto 0x000024
0x000014:
    call (instance_destroy[]:int32 )
    goto 0x000174
0x000024:
    self.snap = (caster_load[]:int32 (var "music/sticksnap.ogg"))
    self.broken = 0s
    push -5s
    if !(>= 47s:flag 2s) goto 0x000080
0x000068:
    self.image_index = 1s
    self.broken = 1s
0x000080:
    push -5s
    if !(>= 275s:flag 1s) goto 0x0000B4
0x00009C:
    self.image_index = 1s
    self.broken = 1s
0x0000B4:
    self.image_speed = 0s
    call (instance_create[]:int32 (var 988s) (var 0s) (var 2650s))
    call (instance_create[]:int32 (var 987s) (var 0s) (var 2725s))
    call (instance_create[]:int32 (var 986s) (var 0s) (var 3400s))
    call (instance_create[]:int32 (var 986s) (var 0s) (var 3440s))
    call (instance_create[]:int32 (var 986s) (var 0s) (var 4040s))
0x000174:
    self.myinteract = 0s
0x000180:
    exit
