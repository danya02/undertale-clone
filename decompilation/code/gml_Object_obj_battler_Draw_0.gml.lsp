0x000000:
    if !(< self.clap 3s) goto 0x000024
0x000014:
    [obj_mainchara].depth = self.depp
0x000024:
    if !(== self.heartdraw 1s) goto 0x000074
0x000038:
    call (draw_sprite[]:int32 (+ 1570.y 17s) (+ 1570.x 5s) (var 0s) (var 49s))
0x000074:
    exit
