0x000000:
    if !(== self.type 0s) goto 0x000020
0x000014:
    call (event_inherited[]:int32 )
0x000020:
    if !(== self.type 5s) goto 0x000218
0x000034:
    call (snd_stop[]:int32 (var 155s))
    call (snd_play[]:int32 (var 155s))
    self.held = 0s
    if !(== self.held 0s) goto 0x000090
0x00007C:
    push (<= global.my_hp 10s)
    goto 0x000094
0x000090:
    push 0s
0x000094:
    if !pop goto 0x0000BC
0x000098:
    global.my_hp = (+ global.my_hp 10s)
    self.held = 1s
0x0000BC:
    if !(== self.held 0s) goto 0x0000E4
0x0000D0:
    push (<= global.my_hp 20s)
    goto 0x0000E8
0x0000E4:
    push 0s
0x0000E8:
    if !pop goto 0x000110
0x0000EC:
    global.my_hp = (+ global.my_hp 6s)
    self.held = 1s
0x000110:
    if !(== self.held 0s) goto 0x000138
0x000124:
    push (<= global.my_hp 30s)
    goto 0x00013C
0x000138:
    push 0s
0x00013C:
    if !pop goto 0x000164
0x000140:
    global.my_hp = (+ global.my_hp 4s)
    self.held = 1s
0x000164:
    if !(== self.held 0s) goto 0x00018C
0x000178:
    push (<= global.my_hp 40s)
    goto 0x000190
0x00018C:
    push 0s
0x000190:
    if !pop goto 0x0001B8
0x000194:
    global.my_hp = (+ global.my_hp 2s)
    self.held = 1s
0x0001B8:
    if !(== self.held 0s) goto 0x0001E0
0x0001CC:
    push (<= global.my_hp 50s)
    goto 0x0001E4
0x0001E0:
    push 0s
0x0001E4:
    if !pop goto 0x00020C
0x0001E8:
    global.my_hp = (+ global.my_hp 1s)
    self.held = 1s
0x00020C:
    call (instance_destroy[]:int32 )
0x000218:
    exit
