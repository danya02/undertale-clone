0x000000:
    self.check = 1s
    if !(bool (instance_exists[]:int32 (var 748s))) goto 0x000180
0x000024:
    if !(== self.blue 1s) goto 0x0000B8
0x000038:
    self.check = 0s
    if (> (abs[]:int32 (- 748.xprevious 748.x)) 0.01d) goto 0x0000A4
0x000074:
    push (> (abs[]:int32 (- 748.yprevious 748.y)) 0.01d)
    goto 0x0000A8
0x0000A4:
    push 1s
0x0000A8:
    if !pop goto 0x0000B8
0x0000AC:
    self.check = 1s
0x0000B8:
    if !(== self.blue 2s) goto 0x00014C
0x0000CC:
    self.check = 0s
    if !(< (abs[]:int32 (- 748.xprevious 748.x)) 0.01d) goto 0x000138
0x000108:
    push (< (abs[]:int32 (- 748.yprevious 748.y)) 0.01d)
    goto 0x00013C
0x000138:
    push 0s
0x00013C:
    if !pop goto 0x00014C
0x000140:
    self.check = 1s
0x00014C:
    call (scr_damagestandard[]:int32 (var 0s) (var 0s) (var 0s) (var 3s) (var 3s))
0x000180:
    if !(bool (instance_exists[]:int32 (var 743s))) goto 0x0001CC
0x000198:
    call (scr_damagestandard[]:int32 (var 0s) (var 0s) (var 0s) (var 3s) self.blue)
0x0001CC:
    push -5s
    if !(== 370s:flag 2s) goto 0x000218
0x0001E8:
    push -5s
    if !(== 372s:flag 0s) goto 0x000218
0x000204:
    push (== global.hp 0s)
    goto 0x00021C
0x000218:
    push 0s
0x00021C:
    if !pop goto 0x000238
0x000220:
    global.hp = 1s
    global.invc = 60s
0x000238:
    exit
