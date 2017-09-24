0x000000:
    call (SCR_BORDERSETUP[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_battlegroup[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    global.mercyuse = -1s
    global.inbattle = 1s
    global.itemused = 0s
    stog.flag[271s] = 0s
    self.runaway = 0s
    push -5s
    stog.msg[4s] = 0s:msg
    if !(== global.actfirst 0s) goto 0x0000F4
0x0000E0:
    push (== global.extraintro 0s)
    goto 0x0000F8
0x0000F4:
    push 0s
0x0000F8:
    if !pop goto 0x000154
0x0000FC:
    global.myfight = 0s
    global.mnfight = 0s
    global.typer = 1s
    push (var 782s)
    push -5s
    call (instance_create[]:int32 2s:idealborder -5s 0s:idealborder)
0x000154:
    global.turn = 0s
    global.turntimer = -1s
    self.won = 0s
    global.heard = 0s
    global.tmsg = "%%%"
    if !(> global.lv 20s) goto 0x0001B4
0x0001A8:
    global.lv = 20s
0x0001B4:
    global.maxhp = (+ 16s (* global.lv 4s))
    if !(> global.hp (+ global.maxhp 15s)) goto 0x00020C
0x0001F4:
    global.hp = (+ global.maxhp 15s)
0x00020C:
    global.at = (+ 8s (* global.lv 2s))
    global.df = (+ 9s (ceil[]:int32 (/ global.lv (double 4s))))
    if !(== global.lv 20s) goto 0x000290
0x00026C:
    global.at = 30s
    global.df = 30s
    global.maxhp = 99s
0x000290:
    self.tempat = global.at
    self.tempdf = global.df
    self.tempspd = global.sp
    self.active = 0s
    stog.alarm[0s] = 3s
    self.healed = 0s
    self.drawrect = 1s
    self.drawbinfo = 1s
    self.rearrange = 0s
0x000310:
    exit
