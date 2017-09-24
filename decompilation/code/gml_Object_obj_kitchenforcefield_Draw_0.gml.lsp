0x000000:
    if !(== self.basic 1s) goto 0x000098
0x000014:
    self.cl = (distance_to_object[]:int32 (var 1570s))
    if !(> self.cl 40s) goto 0x00004C
0x000040:
    self.cl = 40s
0x00004C:
    if !(< self.cl 10s) goto 0x00006C
0x000060:
    self.cl = 10s
0x00006C:
    self.image_alpha = (- 1s (/ (- self.cl 10s) (double 30s)))
0x000098:
    if !(> self.image_yscale 1s) goto 0x0002E8
0x0000AC:
    self.i = 0s
    if !(< self.i self.image_yscale) goto 0x0002E8
0x0000D0:
    self.done = 0s
    if !(== self.i 0s) goto 0x000174
0x0000F0:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.y (* self.i 20s)) self.x (/ self.siner (double 3s)) (var 1708s))
    self.done = 1s
0x000174:
    if !(> self.i 0s) goto 0x00019C
0x000188:
    push (== self.done 0s)
    goto 0x0001A0
0x00019C:
    push 0s
0x0001A0:
    if !pop goto 0x0002CC
0x0001A4:
    if !(>= (+ self.i 1s) self.image_yscale) goto 0x000248
0x0001C4:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var -1s) (var 1s) (+ (+ self.y (* self.i 20s)) 20s) self.x (/ self.siner (double 3s)) (var 1708s))
    goto 0x0002C0
0x000248:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.y (* self.i 20s)) self.x (/ self.siner (double 3s)) (var 1709s))
0x0002C0:
    self.done = 1s
0x0002CC:
    self.i = (+ self.i 1s)
    goto 0x0000B8
0x0002E8:
    if !(> self.image_xscale 1s) goto 0x000540
0x0002FC:
    self.j = 0s
    if !(< self.j self.image_xscale) goto 0x000540
0x000320:
    self.done = 0s
    if !(== self.j 0s) goto 0x0003C4
0x000340:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) self.y (+ self.x (* self.j 20s)) (/ self.siner (double 3s)) (var 1710s))
    self.done = 1s
0x0003C4:
    if !(> self.j 0s) goto 0x0003EC
0x0003D8:
    push (== self.done 0s)
    goto 0x0003F0
0x0003EC:
    push 0s
0x0003F0:
    if !pop goto 0x000524
0x0003F4:
    if !(>= (+ self.j 1s) self.image_xscale) goto 0x000498
0x000414:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var -1s) self.y (+ (+ self.x (* self.j 20s)) 20s) (/ self.siner (double 3s)) (var 1710s))
    goto 0x000518
0x000498:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var -1s) self.y (+ (+ self.x (* self.j 20s)) 20s) (/ self.siner (double 3s)) (var 1711s))
0x000518:
    self.done = 1s
0x000524:
    self.j = (+ self.j 1s)
    goto 0x000308
0x000540:
    self.siner = (+ self.siner 1s)
0x000558:
    exit
