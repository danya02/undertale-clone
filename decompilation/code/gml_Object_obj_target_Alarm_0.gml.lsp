0x000000:
    if !(== global.weapon 3s) goto 0x000040
0x000014:
    call (instance_create[]:int32 (var 734s) self.y (- self.x 16s))
0x000040:
    if (== global.weapon 13s) goto 0x000090
0x000054:
    if (== global.weapon 45s) goto 0x000090
0x000068:
    if (== global.weapon 51s) goto 0x000090
0x00007C:
    push (== global.weapon 52s)
    goto 0x000094
0x000090:
    push 1s
0x000094:
    if !pop goto 0x000138
0x000098:
    self.r = (round[]:int32 (random[]:int32 (var 1s)))
    if !(== self.r 0s) goto 0x0000F8
0x0000CC:
    call (instance_create[]:int32 (var 734s) self.y (- self.x 16s))
0x0000F8:
    if !(== self.r 1s) goto 0x000138
0x00010C:
    call (instance_create[]:int32 (var 734s) self.y (+ self.x 570s))
0x000138:
    if (== global.weapon 14s) goto 0x000160
0x00014C:
    push (== global.weapon 47s)
    goto 0x000164
0x000160:
    push 1s
0x000164:
    if !pop goto 0x000208
0x000168:
    self.r = (round[]:int32 (random[]:int32 (var 1s)))
    if !(== self.r 0s) goto 0x0001C8
0x00019C:
    call (instance_create[]:int32 (var 736s) self.y (- self.x 16s))
0x0001C8:
    if !(== self.r 1s) goto 0x000208
0x0001DC:
    call (instance_create[]:int32 (var 736s) self.y (+ self.x 570s))
0x000208:
    exit
