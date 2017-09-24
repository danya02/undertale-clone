0x000000:
    self.dmg = 0s
    if !(bool (instance_exists[]:int32 (var 478s))) goto 0x000034
0x000024:
    self.dmg = 478.curatk
0x000034:
    self.set = 0s
    if !(> global.hp 1s) goto 0x000060
0x000054:
    self.set = 1s
0x000060:
    if !(== self.set 1s) goto 0x0000A0
0x000074:
    call (scr_damagestandard_x[]:int32 )
    if !(<= global.hp 0s) goto 0x0000A0
0x000094:
    global.hp = 1s
0x0000A0:
    if !(== self.set 0s) goto 0x0000E0
0x0000B4:
    call (scr_damagestandard_x[]:int32 )
    if !(<= global.hp 0s) goto 0x0000E0
0x0000D4:
    global.hp = 0s
0x0000E0:
    exit
