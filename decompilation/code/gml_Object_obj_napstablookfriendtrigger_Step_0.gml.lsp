0x000000:
    if !(== self.con 1s) goto 0x000034
0x000014:
    stog.alarm[4s] = 15s
    self.con = 2s
0x000034:
    if !(== self.con 3s) goto 0x000080
0x000048:
    push 1128s
    stog.sprite_index* = (int32 self.nap)
    self.con = 4s
    stog.alarm[4s] = 20s
0x000080:
    if !(== self.con 5s) goto 0x000188
0x000094:
    stog.msg[0s] = "* oh hey... you...&* followed me.../"
    stog.msg[1s] = "* my house is up here.../"
    stog.msg[2s] = "* so you probably don't want to&  come this way.../"
    stog.msg[3s] = "* hope that helps.../%%"
    push -5s
    if !(> 36s:flag 0s) goto 0x000170
0x000110:
    stog.msg[0s] = "* hey..^1.&* my house is up here.../"
    stog.msg[1s] = "* in case you want to see.../"
    stog.msg[2s] = "* or in case.../"
    stog.msg[3s] = "* you don't.../%%"
0x000170:
    call (scr_regulartext[]:int32 )
    self.con = 6s
0x000188:
    if !(== self.con 6s) goto 0x0001B8
0x00019C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0001BC
0x0001B8:
    push 0s
0x0001BC:
    if !pop goto 0x0001F8
0x0001C0:
    push -3s
    stog.vspeed* = (int32 self.nap)
    self.con = 7s
    stog.alarm[4s] = 30s
0x0001F8:
    if !(== self.con 8s) goto 0x000230
0x00020C:
    global.interact = 0s
    global.plot = 117s
    call (instance_destroy[]:int32 )
0x000230:
    exit
