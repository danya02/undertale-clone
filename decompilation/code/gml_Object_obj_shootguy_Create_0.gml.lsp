0x000000:
    self.buffer = 0s
    self.ammo = 0s
    self.moved = 0s
    self.gridl = 120s
    self.gridr = 180s
    self.gridu = 60s
    self.gridd = 120s
    self.active = 0s
    self.myinteract = 0s
    self.snd = 0s
    self.win = 0s
    self.wincon = 0s
    self.wintimer = 0s
    self.idealammo = 0s
    self.restart = 0s
    self.rstype = 0s
    if !(== self.room 152s) goto 0x0000F0
0x0000D4:
    push -5s
    push (== 375s:flag 1s)
    goto 0x0000F4
0x0000F0:
    push 0s
0x0000F4:
    if !pop goto 0x000104
0x0000F8:
    self.win = 1s
0x000104:
    if !(== self.room 150s) goto 0x000134
0x000118:
    push -5s
    push (== 374s:flag 1s)
    goto 0x000138
0x000134:
    push 0s
0x000138:
    if !pop goto 0x000148
0x00013C:
    self.win = 1s
0x000148:
    if !(== self.room 173s) goto 0x000178
0x00015C:
    push -5s
    push (== 399s:flag 1s)
    goto 0x00017C
0x000178:
    push 0s
0x00017C:
    if !pop goto 0x00018C
0x000180:
    self.win = 1s
0x00018C:
    if !(== self.room 175s) goto 0x0001BC
0x0001A0:
    push -5s
    push (== 400s:flag 1s)
    goto 0x0001C0
0x0001BC:
    push 0s
0x0001C0:
    if !pop goto 0x0001D0
0x0001C4:
    self.win = 1s
0x0001D0:
    if !(== self.room 205s) goto 0x000200
0x0001E4:
    push -5s
    push (== 418s:flag 1s)
    goto 0x000204
0x000200:
    push 0s
0x000204:
    if !pop goto 0x000214
0x000208:
    self.win = 1s
0x000214:
    if !(== self.room 173s) goto 0x000258
0x000228:
    self.gridu = 40s
    self.gridl = 120s
    self.gridr = 220s
    self.gridd = 120s
0x000258:
    if !(== self.room 175s) goto 0x00029C
0x00026C:
    self.gridu = 20s
    self.gridl = 120s
    self.gridr = 220s
    self.gridd = 120s
0x00029C:
    stog.alarm[1s] = 1s
0x0002B0:
    exit
