0x000000:
    stog.alarm[10s] = 30s
    if !(== self.con2 0s) goto 0x000068
0x000028:
    self.next = 0s
    pushenv (int32 self.mypart1) 0x000064
0x000044:
    self.rotmod = 0.4d
    self.speedmod = 1s
0x000064:
    popenv 0x000044
0x000068:
    self.hp = (- self.hp 1s)
    if !(< self.hp 275s) goto 0x0000A8
0x000094:
    push (< self.con2 3s)
    goto 0x0000AC
0x0000A8:
    push 0s
0x0000AC:
    if !pop goto 0x0000BC
0x0000B0:
    self.con2 = 3s
0x0000BC:
    if !(<= self.hp 195s) goto 0x0000E4
0x0000D0:
    push (== self.con2 5s)
    goto 0x0000E8
0x0000E4:
    push 0s
0x0000E8:
    if !pop goto 0x000140
0x0000EC:
    self.next = 0s
    self.con2 = 6s
    call (move_towards_point[]:int32 (var 8s) self.ystart self.xstart)
    global.turntimer = (+ global.turntimer 80s)
0x000140:
    if !(== self.con2 14s) goto 0x000160
0x000154:
    self.con2 = 15s
0x000160:
    if !(== self.con2 28s) goto 0x00020C
0x000174:
    pushenv 782s 0x000188
0x00017C:
    call (instance_destroy[]:int32 )
0x000188:
    popenv 0x00017C
0x00018C:
    pushenv (int32 self.blcon) 0x0001A8
0x00019C:
    call (instance_destroy[]:int32 )
0x0001A8:
    popenv 0x00019C
0x0001AC:
    self.con2 = 29s
    call (caster_free[]:int32 global.batmusic)
    pushenv (int32 self.mypart1) 0x0001F4
0x0001DC:
    self.rotmod = 0s
    self.speedmod = 0s
0x0001F4:
    popenv 0x0001DC
0x0001F8:
    stog.alarm[4s] = 60s
0x00020C:
    exit
