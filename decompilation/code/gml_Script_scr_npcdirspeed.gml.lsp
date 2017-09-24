0x000000:
    if !(== self.myinteract 0s) goto 0x000184
0x000014:
    if !(> self.vspeed 0s) goto 0x000048
0x000028:
    push (> self.vspeed (abs[]:int32 self.hspeed))
    goto 0x00004C
0x000048:
    push 0s
0x00004C:
    if !pop goto 0x00006C
0x000050:
    self.facing = 0s
    self.sprite_index = self.dsprite
0x00006C:
    if !(> self.hspeed 0s) goto 0x0000A0
0x000080:
    push (> self.hspeed (abs[]:int32 self.vspeed))
    goto 0x0000A4
0x0000A0:
    push 0s
0x0000A4:
    if !pop goto 0x0000C4
0x0000A8:
    self.facing = 1s
    self.sprite_index = self.rsprite
0x0000C4:
    if !(< self.vspeed 0s) goto 0x000100
0x0000D8:
    push (> (abs[]:int32 self.vspeed) (abs[]:int32 self.hspeed))
    goto 0x000104
0x000100:
    push 0s
0x000104:
    if !pop goto 0x000124
0x000108:
    self.facing = 2s
    self.sprite_index = self.usprite
0x000124:
    if !(< self.hspeed 0s) goto 0x000160
0x000138:
    push (> (abs[]:int32 self.hspeed) (abs[]:int32 self.vspeed))
    goto 0x000164
0x000160:
    push 0s
0x000164:
    if !pop goto 0x000184
0x000168:
    self.facing = 3s
    self.sprite_index = self.lsprite
0x000184:
    if !(== self.myinteract 1s) goto 0x000228
0x000198:
    if !(== self.facing 0s) goto 0x0001BC
0x0001AC:
    self.sprite_index = self.dtsprite
0x0001BC:
    if !(== self.facing 1s) goto 0x0001E0
0x0001D0:
    self.sprite_index = self.rtsprite
0x0001E0:
    if !(== self.facing 2s) goto 0x000204
0x0001F4:
    self.sprite_index = self.utsprite
0x000204:
    if !(== self.facing 3s) goto 0x000228
0x000218:
    self.sprite_index = self.ltsprite
0x000228:
    exit
