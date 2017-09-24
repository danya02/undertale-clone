0x000000:
    if !(< global.my_inv 0s) goto 0x00031C
0x000014:
    global.my_inv = 20s
    self.hitted = 0s
    call (snd_play[]:int32 (var 156s))
    call (instance_create[]:int32 (var 1582s) (var 0s) (var 0s))
    if !(< global.battlephase 6s) goto 0x000124
0x000078:
    if !(> global.my_hp 40s) goto 0x0000A0
0x00008C:
    push (== self.hitted 0s)
    goto 0x0000A4
0x0000A0:
    push 0s
0x0000A4:
    if !pop goto 0x0000CC
0x0000A8:
    global.my_hp = (- global.my_hp 12s)
    self.hitted = 1s
0x0000CC:
    if !(> global.my_hp 30s) goto 0x0000F4
0x0000E0:
    push (== self.hitted 0s)
    goto 0x0000F8
0x0000F4:
    push 0s
0x0000F8:
    if !pop goto 0x000120
0x0000FC:
    global.my_hp = (- global.my_hp 10s)
    self.hitted = 1s
0x000120:
    goto 0x0001CC
0x000124:
    if !(> global.my_hp 40s) goto 0x00014C
0x000138:
    push (== self.hitted 0s)
    goto 0x000150
0x00014C:
    push 0s
0x000150:
    if !pop goto 0x000178
0x000154:
    global.my_hp = (- global.my_hp 8s)
    self.hitted = 1s
0x000178:
    if !(> global.my_hp 30s) goto 0x0001A0
0x00018C:
    push (== self.hitted 0s)
    goto 0x0001A4
0x0001A0:
    push 0s
0x0001A4:
    if !pop goto 0x0001CC
0x0001A8:
    global.my_hp = (- global.my_hp 7s)
    self.hitted = 1s
0x0001CC:
    if !(> global.my_hp 20s) goto 0x0001F4
0x0001E0:
    push (== self.hitted 0s)
    goto 0x0001F8
0x0001F4:
    push 0s
0x0001F8:
    if !pop goto 0x000220
0x0001FC:
    global.my_hp = (- global.my_hp 6s)
    self.hitted = 1s
0x000220:
    if !(> global.my_hp 12s) goto 0x000248
0x000234:
    push (== self.hitted 0s)
    goto 0x00024C
0x000248:
    push 0s
0x00024C:
    if !pop goto 0x000274
0x000250:
    global.my_hp = (- global.my_hp 4s)
    self.hitted = 1s
0x000274:
    if !(> global.my_hp 5s) goto 0x00029C
0x000288:
    push (== self.hitted 0s)
    goto 0x0002A0
0x00029C:
    push 0s
0x0002A0:
    if !pop goto 0x0002C8
0x0002A4:
    global.my_hp = (- global.my_hp 2s)
    self.hitted = 1s
0x0002C8:
    if !(> global.my_hp 0s) goto 0x0002F0
0x0002DC:
    push (== self.hitted 0s)
    goto 0x0002F4
0x0002F0:
    push 0s
0x0002F4:
    if !pop goto 0x00031C
0x0002F8:
    global.my_hp = (- global.my_hp 1s)
    self.hitted = 1s
0x00031C:
    exit
