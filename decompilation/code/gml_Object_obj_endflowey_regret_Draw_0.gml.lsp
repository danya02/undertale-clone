0x000000:
    if !(== self.flowey 1s) goto 0x0000B0
0x000014:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1s) (var 140s) (var 140s) self.fimg (var 647s))
    if !(< self.fimg 8s) goto 0x0000A4
0x000080:
    self.fimg = (+ self.fimg 0.5d)
    goto 0x0000B0
0x0000A4:
    self.flowey = 2s
0x0000B0:
    if !(== self.flowey 2s) goto 0x000174
0x0000C4:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1s) (var 140s) (var 140s) self.fimg (var 647s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1s) (var 140s) (var 140s) global.faceemotion (var 644s))
0x000174:
    if !(== self.flowey 3s) goto 0x000224
0x000188:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1s) (var 140s) (var 140s) self.fimg (var 623s))
    if !(> self.fimg 0s) goto 0x000218
0x0001F4:
    self.fimg = (- self.fimg 0.5d)
    goto 0x000224
0x000218:
    self.flowey = 4s
0x000224:
    exit
