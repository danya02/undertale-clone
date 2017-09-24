0x000000:
    if !(> 1570.x 220s) goto 0x000058
0x000014:
    push -5s
    if !(== 421s:flag 0s) goto 0x000058
0x000030:
    if !(== self.con 0s) goto 0x000058
0x000044:
    push (== global.interact 0s)
    goto 0x00005C
0x000058:
    push 0s
0x00005C:
    if !pop goto 0x00008C
0x000060:
    global.interact = 1s
    stog.flag[421s] = 1s
    self.con = 5s
0x00008C:
    if !(> 1570.x 360s) goto 0x0000E4
0x0000A0:
    push -5s
    if !(== 421s:flag 1s) goto 0x0000E4
0x0000BC:
    if !(== self.con 0s) goto 0x0000E4
0x0000D0:
    push (== global.interact 0s)
    goto 0x0000E8
0x0000E4:
    push 0s
0x0000E8:
    if !pop goto 0x000118
0x0000EC:
    global.interact = 1s
    stog.flag[421s] = 2s
    self.con = 5s
0x000118:
    if !(> 1570.x 480s) goto 0x000170
0x00012C:
    push -5s
    if !(== 421s:flag 2s) goto 0x000170
0x000148:
    if !(== self.con 0s) goto 0x000170
0x00015C:
    push (== global.interact 0s)
    goto 0x000174
0x000170:
    push 0s
0x000174:
    if !pop goto 0x0001A4
0x000178:
    global.interact = 1s
    stog.flag[421s] = 3s
    self.con = 5s
0x0001A4:
    if !(== self.con 5s) goto 0x000220
0x0001B8:
    call (snd_play[]:int32 (var 34s))
    self.dm = (instance_create[]:int32 (var 1260s) (var 220s) (+ 1570.x 40s))
    push -3s
    stog.vspeed* = (int32 self.dm)
    self.con = 6s
0x000220:
    if !(== self.con 6s) goto 0x0002A0
0x000234:
    if !(< (int32 self.dm):y 130s) goto 0x0002A0
0x000254:
    push 0s
    stog.vspeed* = (int32 self.dm)
    self.con = 7s
    stog.alarm[4s] = 30s
    call (snd_play[]:int32 (var 30s))
0x0002A0:
    if !(== self.con 8s) goto 0x000390
0x0002B4:
    global.mercy = 1s
    push -5s
    if !(== 421s:flag 1s) goto 0x0002E8
0x0002DC:
    global.battlegroup = 64s
0x0002E8:
    push -5s
    if !(== 421s:flag 2s) goto 0x000310
0x000304:
    global.battlegroup = 68s
0x000310:
    push -5s
    if !(== 421s:flag 3s) goto 0x000338
0x00032C:
    global.battlegroup = 67s
0x000338:
    self.con = 9s
    stog.flag[15s] = 1s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    stog.alarm[4s] = 34s
0x000390:
    if !(== self.con 10s) goto 0x0003E0
0x0003A4:
    global.mercy = 0s
    global.interact = 0s
    pushenv 1260s 0x0003D0
0x0003C4:
    call (instance_destroy[]:int32 )
0x0003D0:
    popenv 0x0003C4
0x0003D4:
    self.con = 0s
0x0003E0:
    exit
