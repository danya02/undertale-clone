0x000000:
    self.zone = 0s
    push 743.y
    if !(>= -5s (+ 2s:idealborder 40s)) goto 0x000040
0x000034:
    self.zone = 1s
0x000040:
    push 743.y
    if !(>= -5s (+ 2s:idealborder 80s)) goto 0x000074
0x000068:
    self.zone = 2s
0x000074:
    self.reroll = 0s
    self.gg2 = self.gg
    self.gg = self.g
    self.g = (choose[]:int32 (var 2s) (var 1s) (var 0s))
    if !(== self.gg self.g) goto 0x000104
0x0000E0:
    if !(== self.gg2 self.gg) goto 0x000104
0x0000F8:
    self.reroll = 1s
0x000104:
    if !(== self.g 0s) goto 0x000138
0x000118:
    if !(== self.zone 0s) goto 0x000138
0x00012C:
    self.reroll = 1s
0x000138:
    if !(== self.g 1s) goto 0x00016C
0x00014C:
    if !(== self.zone 2s) goto 0x00016C
0x000160:
    self.reroll = 1s
0x00016C:
    if !(== self.reroll 1s) goto 0x0001A8
0x000180:
    self.g = (choose[]:int32 (var 2s) (var 1s) (var 0s))
0x0001A8:
    if !(== self.g 0s) goto 0x0001E8
0x0001BC:
    call (scr_sbo[]:int32 (var 0s) (var 50s) (var -4s) (var 35s))
0x0001E8:
    if !(== self.g 1s) goto 0x000228
0x0001FC:
    call (scr_sbo[]:int32 (var 2s) (var 50s) (var -4s) (var 90s))
0x000228:
    if !(== self.g 2s) goto 0x000288
0x00023C:
    call (scr_bwall[]:int32 (var 1s) (var 50s) (var 4s) (var 80s))
    push 0.8d
    stog.image_yscale* = (int32 self.bone)
0x000288:
    if !(== self.type 0s) goto 0x0002B0
0x00029C:
    stog.alarm[2s] = 15s
0x0002B0:
    if !(== self.type 1s) goto 0x0002D8
0x0002C4:
    stog.alarm[2s] = 15s
0x0002D8:
    exit
