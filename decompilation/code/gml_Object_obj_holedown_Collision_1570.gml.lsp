0x000000:
    if !(== global.phasing 0s) goto 0x000028
0x000014:
    push (== global.interact 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0001B0
0x000030:
    global.interact = 4s
    global.phasing = 1s
    stog.alarm[0s] = 10s
    self.ns = 1s
    call (instance_create[]:int32 (var 921s) (+ other.y 20s) other.x)
    if !(> (instance_number[]:int32 (var 921s)) 10s) goto 0x0000C4
0x0000B0:
    push (== self.room 16s)
    goto 0x0000C8
0x0000C4:
    push 0s
0x0000C8:
    if !pop goto 0x000128
0x0000CC:
    self.ns = 0s
    call (snd_play[]:int32 (var 3s))
    pushenv 921s 0x000100
0x0000F4:
    self.destroyme = 1s
0x000100:
    popenv 0x0000F4
0x000104:
    global.interact = 0s
    global.phasing = 0s
    call (instance_destroy[]:int32 )
0x000128:
    if !(>= (instance_number[]:int32 (var 921s)) 1000s) goto 0x000188
0x000144:
    pushenv 921s 0x000158
0x00014C:
    self.destroyme = 1s
0x000158:
    popenv 0x00014C
0x00015C:
    call (instance_create[]:int32 (var 921s) (+ other.y 20s) other.x)
0x000188:
    if !(== self.ns 1s) goto 0x0001B0
0x00019C:
    call (snd_play[]:int32 (var 106s))
0x0001B0:
    exit
