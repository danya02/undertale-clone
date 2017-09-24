0x000000:
    push -5s
    if !(< 501s:flag 3s) goto 0x000160
0x00001C:
    self.dmg = 10s
    if !(== global.hope 1s) goto 0x000048
0x00003C:
    self.dmg = 7s
0x000048:
    self.thishp = global.hp
    self.thisinvc = global.invc
    call (scr_damagestandard_x[]:int32 )
    if !(> global.invc self.thisinvc) goto 0x00013C
0x00008C:
    if !(< (abs[]:int32 (- global.hp self.thishp)) 3s) goto 0x0000CC
0x0000B4:
    global.hp = (- self.thishp 3s)
0x0000CC:
    if !(== global.hope 1s) goto 0x00011C
0x0000E0:
    if !(> self.thishp 1s) goto 0x000108
0x0000F4:
    push (<= global.hp 1s)
    goto 0x00010C
0x000108:
    push 0s
0x00010C:
    if !pop goto 0x00011C
0x000110:
    global.hp = 1s
0x00011C:
    if !(<= global.hp 0s) goto 0x00013C
0x000130:
    global.hp = 0s
0x00013C:
    if !(== global.hope 2s) goto 0x00015C
0x000150:
    global.hp = 1s
0x00015C:
    goto 0x00020C
0x000160:
    if !(>= global.hp 14s) goto 0x000180
0x000174:
    self.dmg = 9s
0x000180:
    if !(<= global.hp 14s) goto 0x0001A0
0x000194:
    self.dmg = 7s
0x0001A0:
    if !(<= global.hp 9s) goto 0x0001C0
0x0001B4:
    self.dmg = 6s
0x0001C0:
    if !(<= global.hp 5s) goto 0x0001E0
0x0001D4:
    self.dmg = 1s
0x0001E0:
    call (scr_damagestandard_x[]:int32 )
    if !(< global.hp 1s) goto 0x00020C
0x000200:
    global.hp = 1s
0x00020C:
    exit
