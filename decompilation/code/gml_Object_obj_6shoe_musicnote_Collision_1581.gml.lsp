0x000000:
    call (snd_stop[]:int32 (var 155s))
    call (snd_play[]:int32 (var 155s))
    self.held = 0s
    if !(== self.held 0s) goto 0x00005C
0x000048:
    push (<= global.my_hp 10s)
    goto 0x000060
0x00005C:
    push 0s
0x000060:
    if !pop goto 0x000088
0x000064:
    global.my_hp = (+ global.my_hp 10s)
    self.held = 1s
0x000088:
    if !(== self.held 0s) goto 0x0000B0
0x00009C:
    push (<= global.my_hp 20s)
    goto 0x0000B4
0x0000B0:
    push 0s
0x0000B4:
    if !pop goto 0x0000DC
0x0000B8:
    global.my_hp = (+ global.my_hp 6s)
    self.held = 1s
0x0000DC:
    if !(== self.held 0s) goto 0x000104
0x0000F0:
    push (<= global.my_hp 30s)
    goto 0x000108
0x000104:
    push 0s
0x000108:
    if !pop goto 0x000130
0x00010C:
    global.my_hp = (+ global.my_hp 4s)
    self.held = 1s
0x000130:
    if !(== self.held 0s) goto 0x000158
0x000144:
    push (<= global.my_hp 40s)
    goto 0x00015C
0x000158:
    push 0s
0x00015C:
    if !pop goto 0x000184
0x000160:
    global.my_hp = (+ global.my_hp 2s)
    self.held = 1s
0x000184:
    if !(== self.held 0s) goto 0x0001AC
0x000198:
    push (<= global.my_hp 50s)
    goto 0x0001B0
0x0001AC:
    push 0s
0x0001B0:
    if !pop goto 0x0001D8
0x0001B4:
    global.my_hp = (+ global.my_hp 1s)
    self.held = 1s
0x0001D8:
    call (instance_destroy[]:int32 )
0x0001E4:
    exit
