0x000000:
    stog.alarm[1s] = 1s
    if (<= 2s 0) goto 0x000128
0x00002C:
    push 2s
    if !(== self.room 106s) goto 0x0000AC
0x000040:
    push (var 1153s)
    push -1s
    call (instance_create[]:int32 (- (- 0s:view_yview (random[]:int32 (var 50s))) 70s) -1s (+ (- 0s:view_xview 40s) (random[]:int32 (var 360s))))
0x0000AC:
    if !(== self.room 107s) goto 0x000110
0x0000C0:
    push (var 1153s)
    call (instance_create[]:int32 -1s (- 0s:view_yview (random[]:int32 (var 240s))) (+ 120s (random[]:int32 (var 60s))))
0x000110:
    if (bool (- pop 1)) goto 0x00002C
0x000128:
    push (- pop 1)
    pop
    if !(== self.room 109s) goto 0x000220
0x000140:
    push (var 1153s)
    self.d = (instance_create[]:int32 -1s (- (- 0s:view_yview (random[]:int32 (var 50s))) 90s) (random[]:int32 (var 340s)))
    push 1s
    stog.dont* = (int32 self.d)
    push (var 1153s)
    self.d = (instance_create[]:int32 -1s (- (- 0s:view_yview (random[]:int32 (var 50s))) 130s) (+ (random[]:int32 (var 180s)) 340s))
    push 1s
    stog.dont* = (int32 self.d)
0x000220:
    exit
