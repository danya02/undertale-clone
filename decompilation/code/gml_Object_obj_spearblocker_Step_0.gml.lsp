0x000000:
    self.ender = 0s
    self.buffer = (+ self.buffer 1s)
    if !(!= self.refuse 2s) goto 0x000110
0x000038:
    if !(< global.turntimer 1s) goto 0x000064
0x00004C:
    global.turntimer = -1s
    self.ender = 1s
0x000064:
    if !(!= 743.sprite_index 39s) goto 0x000084
0x000078:
    self.ender = 1s
0x000084:
    if !(> self.buffer 30s) goto 0x000110
0x000098:
    if !(== (instance_exists[]:int32 (var 265s)) 0s) goto 0x0000D0
0x0000B4:
    push (== (instance_exists[]:int32 (var 266s)) 0s)
    goto 0x0000D4
0x0000D0:
    push 0s
0x0000D4:
    if !pop goto 0x000110
0x0000D8:
    if !(bool (instance_exists[]:int32 (var 264s))) goto 0x000110
0x0000F0:
    if !(== 264.done 1s) goto 0x000110
0x000104:
    self.ender = 1s
0x000110:
    if !(== self.ender 1s) goto 0x000280
0x000124:
    pushenv 265s 0x000138
0x00012C:
    call (instance_destroy[]:int32 )
0x000138:
    popenv 0x00012C
0x00013C:
    pushenv 266s 0x000150
0x000144:
    call (instance_destroy[]:int32 )
0x000150:
    popenv 0x000144
0x000154:
    if !(== self.refuse 0s) goto 0x000174
0x000168:
    global.mnfight = 4s
0x000174:
    if !(== self.refuse 1s) goto 0x000274
0x000188:
    if (== self.lesson 6s) goto 0x0001C4
0x00019C:
    if (== self.lesson 11s) goto 0x0001C4
0x0001B0:
    push (== self.lesson 20s)
    goto 0x0001C8
0x0001C4:
    push 1s
0x0001C8:
    if !pop goto 0x000204
0x0001CC:
    pushenv 272s 0x0001E0
0x0001D4:
    self.darkify = 3s
0x0001E0:
    popenv 0x0001D4
0x0001E4:
    pushenv 272s 0x000200
0x0001EC:
    call (event_user[]:int32 (var 1s))
0x000200:
    popenv 0x0001EC
0x000204:
    if (== self.lesson -7s) goto 0x000240
0x000218:
    if (== self.lesson -10s) goto 0x000240
0x00022C:
    push (== self.lesson -14s)
    goto 0x000244
0x000240:
    push 1s
0x000244:
    if !pop goto 0x000274
0x000248:
    pushenv 282s 0x000270
0x000250:
    self.darkify = 3s
    call (event_user[]:int32 (var 1s))
0x000270:
    popenv 0x000250
0x000274:
    call (instance_destroy[]:int32 )
0x000280:
    exit
