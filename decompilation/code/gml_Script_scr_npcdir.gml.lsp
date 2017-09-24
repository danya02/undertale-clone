0x000000:
    if !(== self.myinteract 0s) goto 0x000144
0x000014:
    if !(>= self.direction 225s) goto 0x00003C
0x000028:
    push (< self.direction 315s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x000060
0x000044:
    self.facing = 0s
    self.sprite_index = self.dsprite
0x000060:
    if (>= self.direction 315s) goto 0x000088
0x000074:
    push (< self.direction 45s)
    goto 0x00008C
0x000088:
    push 1s
0x00008C:
    if !pop goto 0x0000AC
0x000090:
    self.facing = 1s
    self.sprite_index = self.rsprite
0x0000AC:
    if !(>= self.direction 45s) goto 0x0000D4
0x0000C0:
    push (< self.direction 135s)
    goto 0x0000D8
0x0000D4:
    push 0s
0x0000D8:
    if !pop goto 0x0000F8
0x0000DC:
    self.facing = 2s
    self.sprite_index = self.usprite
0x0000F8:
    if !(>= self.direction 135s) goto 0x000120
0x00010C:
    push (< self.direction 225s)
    goto 0x000124
0x000120:
    push 0s
0x000124:
    if !pop goto 0x000144
0x000128:
    self.facing = 3s
    self.sprite_index = self.lsprite
0x000144:
    if !(== self.myinteract (+ 1s self.argument0)) goto 0x0001F4
0x000164:
    if !(== self.facing 0s) goto 0x000188
0x000178:
    self.sprite_index = self.dtsprite
0x000188:
    if !(== self.facing 1s) goto 0x0001AC
0x00019C:
    self.sprite_index = self.rtsprite
0x0001AC:
    if !(== self.facing 2s) goto 0x0001D0
0x0001C0:
    self.sprite_index = self.utsprite
0x0001D0:
    if !(== self.facing 3s) goto 0x0001F4
0x0001E4:
    self.sprite_index = self.ltsprite
0x0001F4:
    exit
