0x000000:
    call (snd_play[]:int32 (var 53s))
    if !(== (instance_exists[]:int32 (var 184s)) 0s) goto 0x000054
0x000030:
    call (instance_create[]:int32 (var 184s) (var 0s) (var 0s))
0x000054:
    if !(== self.hits 0s) goto 0x000074
0x000068:
    global.hp = 1s
0x000074:
    if !(== self.hits 1s) goto 0x000094
0x000088:
    global.hp = 1s
0x000094:
    if !(== self.hits 2s) goto 0x0000BC
0x0000A8:
    global.hp = 0.9d
0x0000BC:
    if !(== self.hits 3s) goto 0x0000E4
0x0000D0:
    global.hp = 0.5d
0x0000E4:
    if !(== self.hits 4s) goto 0x00010C
0x0000F8:
    global.hp = 0.1d
0x00010C:
    if !(== self.hits 5s) goto 0x000134
0x000120:
    global.hp = 0.01d
0x000134:
    if !(== self.hits 6s) goto 0x00015C
0x000148:
    stog.flag[509s] = 1s
0x00015C:
    if !(== self.hits 7s) goto 0x000184
0x000170:
    stog.flag[509s] = 2s
0x000184:
    if !(== self.hits 8s) goto 0x0001AC
0x000198:
    stog.flag[509s] = 3s
0x0001AC:
    if !(== self.hits 9s) goto 0x0001D4
0x0001C0:
    stog.flag[509s] = 4s
0x0001D4:
    self.hits = (+ self.hits 1s)
    stog.alarm[5s] = 40s
0x000200:
    exit
