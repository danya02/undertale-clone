0x000000:
    if !(< global.my_inv 0s) goto 0x00027C
0x000014:
    global.my_inv = 20s
    self.hitted = 0s
    call (snd_play[]:int32 (var 156s))
    call (instance_create[]:int32 (var 1582s) (var 0s) (var 0s))
    if !(> global.my_hp 40s) goto 0x00008C
0x000078:
    push (== self.hitted 0s)
    goto 0x000090
0x00008C:
    push 0s
0x000090:
    if !pop goto 0x0000B8
0x000094:
    global.my_hp = (- global.my_hp 6s)
    self.hitted = 1s
0x0000B8:
    if !(> global.my_hp 30s) goto 0x0000E0
0x0000CC:
    push (== self.hitted 0s)
    goto 0x0000E4
0x0000E0:
    push 0s
0x0000E4:
    if !pop goto 0x00010C
0x0000E8:
    global.my_hp = (- global.my_hp 4s)
    self.hitted = 1s
0x00010C:
    if !(> global.my_hp 20s) goto 0x000134
0x000120:
    push (== self.hitted 0s)
    goto 0x000138
0x000134:
    push 0s
0x000138:
    if !pop goto 0x000160
0x00013C:
    global.my_hp = (- global.my_hp 3s)
    self.hitted = 1s
0x000160:
    if !(> global.my_hp 12s) goto 0x000188
0x000174:
    push (== self.hitted 0s)
    goto 0x00018C
0x000188:
    push 0s
0x00018C:
    if !pop goto 0x0001B4
0x000190:
    global.my_hp = (- global.my_hp 2s)
    self.hitted = 1s
0x0001B4:
    if !(> global.my_hp 5s) goto 0x0001DC
0x0001C8:
    push (== self.hitted 0s)
    goto 0x0001E0
0x0001DC:
    push 0s
0x0001E0:
    if !pop goto 0x000208
0x0001E4:
    global.my_hp = (- global.my_hp 1s)
    self.hitted = 1s
0x000208:
    if !(> global.my_hp 0s) goto 0x000230
0x00021C:
    push (== self.hitted 0s)
    goto 0x000234
0x000230:
    push 0s
0x000234:
    if !pop goto 0x00025C
0x000238:
    global.my_hp = (- global.my_hp 1s)
    self.hitted = 1s
0x00025C:
    if !(<= global.my_hp 1s) goto 0x00027C
0x000270:
    global.my_hp = 1s
0x00027C:
    exit
