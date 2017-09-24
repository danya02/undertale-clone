0x000000:
    if !(!= global.interact 5s) goto 0x00032C
0x000014:
    if !(== self.room 84s) goto 0x00003C
0x000028:
    push (> self.rate_time 85s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x000214
0x000044:
    self.rate_time = 0s
    self.i = 0s
    call (instance_create[]:int32 (var 1137s) (- -20s (* self.i 16s)) (var 235s))
    call (instance_create[]:int32 (var 1137s) (- -20s (* self.i 16s)) (var 325s))
    call (instance_create[]:int32 (var 1137s) (- -260s (* self.i 16s)) (var 255s))
    call (instance_create[]:int32 (var 1137s) (- -260s (* self.i 16s)) (var 345s))
    call (instance_create[]:int32 (var 1137s) (- -440s (* self.i 16s)) (var 235s))
    call (instance_create[]:int32 (var 1137s) (- -460s (* self.i 16s)) (var 255s))
    call (instance_create[]:int32 (var 1137s) (- -480s (* self.i 16s)) (var 325s))
    call (instance_create[]:int32 (var 1137s) (- -500s (* self.i 16s)) (var 345s))
    stog.alarm[0s] = 90s
    goto 0x000228
0x000214:
    stog.alarm[0s] = 5s
0x000228:
    if !(== self.room 91s) goto 0x000328
0x00023C:
    call (instance_create[]:int32 (var 1137s) (var -10s) (var 100s))
    call (instance_create[]:int32 (var 1137s) (var -10s) (var 220s))
    call (instance_create[]:int32 (var 1137s) (var -40s) (var 100s))
    call (instance_create[]:int32 (var 1137s) (var -40s) (var 220s))
    call (instance_create[]:int32 (var 1137s) (var -80s) (var 100s))
    call (instance_create[]:int32 (var 1137s) (var -80s) (var 220s))
    stog.alarm[0s] = 40s
0x000328:
    goto 0x000340
0x00032C:
    stog.alarm[0s] = 5s
0x000340:
    exit
