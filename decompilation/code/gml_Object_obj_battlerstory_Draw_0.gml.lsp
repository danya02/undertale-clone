0x000000:
    if !(< self.clap 3s) goto 0x000054
0x000014:
    [obj_mainchara].depth = self.depp
    if !(bool (instance_exists[]:int32 (var 147s))) goto 0x000054
0x00003C:
    pushenv 147s 0x000050
0x000044:
    call (instance_destroy[]:int32 )
0x000050:
    popenv 0x000044
0x000054:
    if !(== self.heartdraw 1s) goto 0x0000A4
0x000068:
    call (draw_sprite[]:int32 (+ 1570.y 17s) (+ 1570.x 5s) (var 0s) (var 49s))
0x0000A4:
    exit
