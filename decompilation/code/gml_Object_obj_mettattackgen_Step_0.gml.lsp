0x000000:
    self.siner = (+ self.siner 1s)
    if !(<= global.turntimer 0s) goto 0x0000B0
0x00002C:
    pushenv 408s 0x000040
0x000034:
    self.bodyopen = 0s
0x000040:
    popenv 0x000034
0x000044:
    if !(== global.attacktype 48s) goto 0x000078
0x000058:
    pushenv 408s 0x000074
0x000060:
    call (event_user[]:int32 (var 3s))
0x000074:
    popenv 0x000060
0x000078:
    global.turntimer = -1s
    if !(== self.last 0s) goto 0x0000A4
0x000098:
    global.mnfight = 3s
0x0000A4:
    call (instance_destroy[]:int32 )
0x0000B0:
    if !(== self.specialtimer 1s) goto 0x000108
0x0000C4:
    if !(== (instance_exists[]:int32 (var 431s)) 0s) goto 0x0000F4
0x0000E0:
    push (> global.turntimer 9s)
    goto 0x0000F8
0x0000F4:
    push 0s
0x0000F8:
    if !pop goto 0x000108
0x0000FC:
    global.turntimer = 9s
0x000108:
    if !(== self.specialtimer 2s) goto 0x000160
0x00011C:
    if !(== (instance_exists[]:int32 (var 445s)) 0s) goto 0x00014C
0x000138:
    push (> global.turntimer 9s)
    goto 0x000150
0x00014C:
    push 0s
0x000150:
    if !pop goto 0x000160
0x000154:
    global.turntimer = 9s
0x000160:
    exit
