0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== self.talkedto 1s) goto 0x000078
0x000048:
    if !(== global.choice 0s) goto 0x000078
0x00005C:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x00007C
0x000078:
    push 0s
0x00007C:
    if !pop goto 0x0000DC
0x000080:
    global.battlegroup = 20s
    stog.flag[200s] = 0s
    global.mercy = 1s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.talkedto = 0s
0x0000DC:
    if !(== global.plot 10.3d) goto 0x000120
0x0000F8:
    stog.alarm[4s] = 2s
    global.plot = 10.35d
0x000120:
    if !(== global.plot 10.4d) goto 0x000158
0x00013C:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x00015C
0x000158:
    push 0s
0x00015C:
    if !pop goto 0x0001D8
0x000160:
    self.image_alpha = (- self.image_alpha 0.05d)
    if !(< self.image_alpha 0.1d) goto 0x0001D8
0x00019C:
    pushenv 1570s 0x0001B0
0x0001A4:
    self.uncan = 0s
0x0001B0:
    popenv 0x0001A4
0x0001B4:
    global.plot = 11s
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x0001D8:
    if !(== global.plot 11s) goto 0x000228
0x0001EC:
    pushenv 1570s 0x000200
0x0001F4:
    self.uncan = 0s
0x000200:
    popenv 0x0001F4
0x000204:
    global.border = 0s
    global.mercy = 0s
    call (instance_destroy[]:int32 )
0x000228:
    exit
