0x000000:
    if (bool (instance_exists[]:int32 (var 505s))) goto 0x000030
0x000018:
    push (bool (instance_exists[]:int32 (var 504s)))
    goto 0x000034
0x000030:
    push 1s
0x000034:
    if !pop goto 0x000048
0x000038:
    call (instance_destroy[]:int32 )
    exit
0x000048:
    self.h = 0s
    if !(bool (instance_exists[]:int32 (var 519s))) goto 0x000110
0x00006C:
    if !(== 519.hit_try 14s) goto 0x00008C
0x000080:
    self.h = 1s
0x00008C:
    if !(== 519.hit_try 15s) goto 0x0000AC
0x0000A0:
    self.h = 1s
0x0000AC:
    if !(== 519.hit_try 16s) goto 0x0000CC
0x0000C0:
    self.h = 2s
0x0000CC:
    if !(== 519.hit_try 17s) goto 0x0000EC
0x0000E0:
    self.h = 2s
0x0000EC:
    if !(>= 519.hit_try 23s) goto 0x000110
0x000100:
    call (instance_destroy[]:int32 )
    exit
0x000110:
    if !(!= self.h 2s) goto 0x000138
0x000124:
    stog.alarm[0s] = 1s
0x000138:
    if !(!= self.h 1s) goto 0x00019C
0x00014C:
    stog.alarm[1s] = 3s
    stog.alarm[2s] = 20s
    stog.alarm[3s] = 3s
    stog.alarm[4s] = 20s
0x00019C:
    stog.alarm[5s] = 50s
0x0001B0:
    exit
