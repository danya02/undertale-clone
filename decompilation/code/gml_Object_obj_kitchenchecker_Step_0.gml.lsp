0x000000:
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) (var 1570s) (var 130s) (var 80s) (var 130s) (var 0s))) goto 0x00005C
0x000048:
    stog.alarm[1s] = 3s
0x00005C:
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) (var 1570s) (var 138s) (var 260s) (var 138s) (var 200s))) goto 0x0000B8
0x0000A4:
    stog.alarm[2s] = 3s
0x0000B8:
    if !(== self.level 0s) goto 0x0000E0
0x0000CC:
    push (> self.bgalpha 0s)
    goto 0x0000E4
0x0000E0:
    push 0s
0x0000E4:
    if !pop goto 0x000148
0x0000E8:
    self.bgalpha = (- self.bgalpha 0.2d)
    if !(< self.bgalpha 0.11d) goto 0x000130
0x000124:
    self.bgalpha = 0s
0x000130:
    stog.background_alpha[2s] = self.bgalpha
0x000148:
    if !(> self.level 0s) goto 0x000170
0x00015C:
    push (< self.bgalpha 1s)
    goto 0x000174
0x000170:
    push 0s
0x000174:
    if !pop goto 0x0001D8
0x000178:
    self.bgalpha = (+ self.bgalpha 0.2d)
    if !(> self.bgalpha 0.9d) goto 0x0001C0
0x0001B4:
    self.bgalpha = 1s
0x0001C0:
    stog.background_alpha[2s] = self.bgalpha
0x0001D8:
    if !(== self.initcheck 0s) goto 0x000238
0x0001EC:
    if !(< 1570.y 120s) goto 0x000218
0x000200:
    stog.alarm[1s] = 1s
    goto 0x00022C
0x000218:
    stog.alarm[2s] = 1s
0x00022C:
    self.initcheck = 1s
0x000238:
    exit
