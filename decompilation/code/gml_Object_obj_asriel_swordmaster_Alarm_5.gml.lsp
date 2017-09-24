0x000000:
    self.maxtime = 5s
    if !(> self.h_mode 0s) goto 0x00002C
0x000020:
    self.maxtime = 6s
0x00002C:
    if !(< self.times self.maxtime) goto 0x0002D0
0x000044:
    self.which = (choose[]:int32 (var 1s) (var 0s))
    if !(== self.which self.lastwhichwhich) goto 0x000094
0x00007C:
    push (== self.which self.lastwhich)
    goto 0x000098
0x000094:
    push 0s
0x000098:
    if !pop goto 0x0000CC
0x00009C:
    if !(== self.which 0s) goto 0x0000C0
0x0000B0:
    self.which = 1s
    goto 0x0000CC
0x0000C0:
    self.which = 0s
0x0000CC:
    if !(== self.h_mode 0s) goto 0x000138
0x0000E0:
    if !(== self.which 0s) goto 0x00010C
0x0000F4:
    push 106s
    stog.timer* = (int32 self.sword_a)
0x00010C:
    if !(== self.which 1s) goto 0x000138
0x000120:
    push 106s
    stog.timer* = (int32 self.sword_b)
0x000138:
    if !(== self.h_mode 1s) goto 0x0001A4
0x00014C:
    if !(== self.which 0s) goto 0x000178
0x000160:
    push 109s
    stog.timer* = (int32 self.sword_a)
0x000178:
    if !(== self.which 1s) goto 0x0001A4
0x00018C:
    push 109s
    stog.timer* = (int32 self.sword_b)
0x0001A4:
    if !(== self.h_mode 2s) goto 0x000210
0x0001B8:
    if !(== self.which 0s) goto 0x0001E4
0x0001CC:
    push 112s
    stog.timer* = (int32 self.sword_a)
0x0001E4:
    if !(== self.which 1s) goto 0x000210
0x0001F8:
    push 112s
    stog.timer* = (int32 self.sword_b)
0x000210:
    push self.h_mode
    stog.h_mode* = (int32 self.sword_a)
    push self.h_mode
    stog.h_mode* = (int32 self.sword_b)
    self.lastwhichwhich = self.lastwhich
    self.lastwhich = self.which
    stog.alarm[5s] = 27s
    if !(== self.h_mode 1s) goto 0x0002A4
0x000290:
    stog.alarm[5s] = 24s
0x0002A4:
    if !(== self.h_mode 2s) goto 0x0002CC
0x0002B8:
    stog.alarm[5s] = 21s
0x0002CC:
    goto 0x000318
0x0002D0:
    push 89s
    stog.timer* = (int32 self.sword_a)
    push 89s
    stog.timer* = (int32 self.sword_b)
    [obj_asriel_swordarm].twinkle = 1s
    self.freakcon = 1s
0x000318:
    self.times = (+ self.times 1s)
    push 0s
    stog.headrot* = (int32 self.king)
0x000348:
    exit
