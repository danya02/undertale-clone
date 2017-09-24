0x000000:
    if !(== self.look 27s) goto 0x000020
0x000014:
    self.conversation = 5s
0x000020:
    if !(== self.look 26s) goto 0x0000B0
0x000034:
    push (int32 self.papyrus):rtsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):rtsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 30s
    self.look = (+ self.look 1s)
0x0000B0:
    if !(== self.look 25s) goto 0x000140
0x0000C4:
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):lsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 50s
    self.look = (+ self.look 1s)
0x000140:
    if !(== self.look 24s) goto 0x0003C0
0x000154:
    self.pp = (floor[]:int32 (random[]:int32 (var 4s)))
    self.ss = (floor[]:int32 (random[]:int32 (var 4s)))
    if !(== self.pp 0s) goto 0x0001D0
0x0001A8:
    push (int32 self.papyrus):dsprite
    stog.sprite_index* = (int32 self.papyrus)
0x0001D0:
    if !(== self.pp 1s) goto 0x00020C
0x0001E4:
    push (int32 self.papyrus):rsprite
    stog.sprite_index* = (int32 self.papyrus)
0x00020C:
    if !(== self.pp 2s) goto 0x000248
0x000220:
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
0x000248:
    if !(== self.pp 3s) goto 0x000284
0x00025C:
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
0x000284:
    if !(== self.ss 0s) goto 0x0002C0
0x000298:
    push (int32 self.sans):dsprite
    stog.sprite_index* = (int32 self.sans)
0x0002C0:
    if !(== self.ss 1s) goto 0x0002FC
0x0002D4:
    push (int32 self.sans):rsprite
    stog.sprite_index* = (int32 self.sans)
0x0002FC:
    if !(== self.ss 2s) goto 0x000338
0x000310:
    push (int32 self.sans):usprite
    stog.sprite_index* = (int32 self.sans)
0x000338:
    if !(== self.ss 3s) goto 0x000374
0x00034C:
    push (int32 self.sans):lsprite
    stog.sprite_index* = (int32 self.sans)
0x000374:
    stog.alarm[1s] = 1s
    self.spinagain = (+ self.spinagain 1s)
    if !(> self.spinagain 37s) goto 0x0003C0
0x0003B4:
    self.look = 25s
0x0003C0:
    if !(== self.look 23s) goto 0x000534
0x0003D4:
    if !(== (int32 self.papyrus):sprite_index (int32 self.papyrus):lsprite) goto 0x000430
0x000404:
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    goto 0x000458
0x000430:
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
0x000458:
    if !(== (int32 self.sans):sprite_index (int32 self.sans):lsprite) goto 0x0004B4
0x000488:
    push (int32 self.sans):dsprite
    stog.sprite_index* = (int32 self.sans)
    goto 0x0004DC
0x0004B4:
    push (int32 self.sans):lsprite
    stog.sprite_index* = (int32 self.sans)
0x0004DC:
    stog.alarm[1s] = 2s
    self.spinagain = (+ self.spinagain 1s)
    if !(> self.spinagain 5s) goto 0x000534
0x00051C:
    self.spinagain = 0s
    self.look = 24s
0x000534:
    if !(== self.look 22s) goto 0x0005C4
0x000548:
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):lsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 2s
    self.look = (+ self.look 1s)
0x0005C4:
    if !(== self.look 21s) goto 0x000654
0x0005D8:
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):dsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 2s
    self.look = (+ self.look 1s)
0x000654:
    if !(== self.look 20s) goto 0x0006E4
0x000668:
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):lsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 2s
    self.look = (+ self.look 1s)
0x0006E4:
    if !(== self.look 19s) goto 0x000774
0x0006F8:
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):dsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 2s
    self.look = (+ self.look 1s)
0x000774:
    if !(== self.look 18s) goto 0x000804
0x000788:
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):lsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 2s
    self.look = (+ self.look 1s)
0x000804:
    if !(== self.look 17s) goto 0x000894
0x000818:
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):dsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 2s
    self.look = (+ self.look 1s)
0x000894:
    if !(== self.look 16s) goto 0x000924
0x0008A8:
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):lsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 2s
    self.look = (+ self.look 1s)
0x000924:
    if !(== self.look 15s) goto 0x0009B4
0x000938:
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):dsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 2s
    self.look = (+ self.look 1s)
0x0009B4:
    if !(== self.look 14s) goto 0x000A44
0x0009C8:
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):lsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 2s
    self.look = (+ self.look 1s)
0x000A44:
    if !(== self.look 13s) goto 0x000AD4
0x000A58:
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):dsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 3s
    self.look = (+ self.look 1s)
0x000AD4:
    if !(== self.look 12s) goto 0x000B64
0x000AE8:
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):lsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 4s
    self.look = (+ self.look 1s)
0x000B64:
    if !(== self.look 11s) goto 0x000BF4
0x000B78:
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):dsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 5s
    self.look = (+ self.look 1s)
0x000BF4:
    if !(== self.look 10s) goto 0x000C84
0x000C08:
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):lsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 6s
    self.look = (+ self.look 1s)
0x000C84:
    if !(== self.look 9s) goto 0x000D14
0x000C98:
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):dsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 7s
    self.look = (+ self.look 1s)
0x000D14:
    if !(== self.look 8s) goto 0x000DA4
0x000D28:
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):lsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 10s
    self.look = (+ self.look 1s)
0x000DA4:
    if !(== self.look 7s) goto 0x000E34
0x000DB8:
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):dsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 12s
    self.look = (+ self.look 1s)
0x000E34:
    if !(== self.look 6s) goto 0x000EC4
0x000E48:
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):lsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 12s
    self.look = (+ self.look 1s)
0x000EC4:
    if !(== self.look 5s) goto 0x000F48
0x000ED8:
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):dsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 16s
    self.look = 6s
0x000F48:
    if !(== self.look 4s) goto 0x000FCC
0x000F5C:
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):lsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 16s
    self.look = 5s
0x000FCC:
    if !(== self.look 3s) goto 0x001050
0x000FE0:
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):dsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 24s
    self.look = 4s
0x001050:
    if !(== self.look 2s) goto 0x0010D4
0x001064:
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):lsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 24s
    self.look = 3s
0x0010D4:
    if !(== self.look 1s) goto 0x001158
0x0010E8:
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):dsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 30s
    self.look = 2s
0x001158:
    if !(== self.look 0s) goto 0x0011DC
0x00116C:
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    push (int32 self.sans):lsprite
    stog.sprite_index* = (int32 self.sans)
    stog.alarm[1s] = 30s
    self.look = 1s
0x0011DC:
    exit
