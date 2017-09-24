0x000000:
    push self.x
    if !(> -1s (- 0s:view_xview 100s)) goto 0x000064
0x000028:
    push self.x
    push -1s
    push (< 0s:view_xview (+ (+ -1s 0s:view_wview) 100s))
    goto 0x000068
0x000064:
    push 0s
0x000068:
    if !pop goto 0x000120
0x00006C:
    push self.y
    if !(> -1s (- 0s:view_yview 100s)) goto 0x0000D0
0x000094:
    push self.y
    push -1s
    push (< 0s:view_yview (+ (+ -1s 0s:view_hview) 100s))
    goto 0x0000D4
0x0000D0:
    push 0s
0x0000D4:
    if !pop goto 0x000120
0x0000D8:
    call (instance_create[]:int32 (var 114s) (- self.y 15s) (- (+ self.x (random[]:int32 (var 60s))) 20s))
0x000120:
    stog.alarm[0s] = 10s
0x000134:
    exit
