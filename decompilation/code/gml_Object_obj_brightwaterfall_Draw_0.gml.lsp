0x000000:
    self.siner = (+ self.siner 1s)
    if !(== self.image_xscale 1s) goto 0x000064
0x00002C:
    call (draw_sprite[]:int32 self.y self.x (/ self.siner (double 5s)) (var 961s))
0x000064:
    if !(> self.image_xscale 1s) goto 0x0001B8
0x000078:
    call (draw_sprite[]:int32 self.y self.x (/ self.siner (double 5s)) (var 965s))
    self.i = 1s
    if !(< self.i (+ self.image_xscale 1s)) goto 0x0001B8
0x0000DC:
    if !(< self.i self.image_xscale) goto 0x000144
0x0000F4:
    call (draw_sprite[]:int32 self.y (+ self.x (* self.i 20s)) (/ self.siner (double 5s)) (var 963s))
    goto 0x00019C
0x000144:
    call (draw_sprite[]:int32 self.y (- (+ self.x (* self.i 20s)) 20s) (/ self.siner (double 5s)) (var 964s))
    goto 0x0001B8
0x00019C:
    self.i = (+ self.i 1s)
    goto 0x0000BC
0x0001B8:
    if !(> self.image_yscale 1s) goto 0x0001E0
0x0001CC:
    push (== self.image_xscale 1s)
    goto 0x0001E4
0x0001E0:
    push 0s
0x0001E4:
    if !pop goto 0x000274
0x0001E8:
    self.i = 1s
    if !(<= self.i self.image_yscale) goto 0x000274
0x00020C:
    call (draw_sprite[]:int32 (+ self.y (* self.i 20s)) self.x (/ self.siner (double 5s)) (var 968s))
    self.i = (+ self.i 1s)
    goto 0x0001F4
0x000274:
    if !(> self.image_yscale 1s) goto 0x00029C
0x000288:
    push (> self.image_xscale 1s)
    goto 0x0002A0
0x00029C:
    push 0s
0x0002A0:
    if !pop goto 0x0005FC
0x0002A4:
    self.j = 1s
    if !(<= self.j self.image_yscale) goto 0x0005FC
0x0002C8:
    if !(< self.j self.image_yscale) goto 0x00032C
0x0002E0:
    call (draw_sprite[]:int32 (+ self.y (* self.j 20s)) self.x (/ self.siner (double 5s)) (var 966s))
0x00032C:
    if !(== self.j self.image_yscale) goto 0x000398
0x000344:
    call (draw_sprite[]:int32 (- (+ self.y (* self.j 20s)) 20s) self.x (/ self.siner (double 5s)) (var 971s))
0x000398:
    self.i = 1s
    if !(<= self.i self.image_xscale) goto 0x0005E0
0x0003BC:
    if !(< self.j self.image_yscale) goto 0x0004B8
0x0003D4:
    if !(== self.i self.image_xscale) goto 0x000458
0x0003EC:
    call (draw_sprite[]:int32 (+ self.y (* self.j 20s)) (- (+ self.x (* self.i 20s)) 20s) (/ self.siner (double 5s)) (var 967s))
    goto 0x0004B8
0x000458:
    call (draw_sprite[]:int32 (+ self.y (* self.j 20s)) (+ self.x (* self.i 20s)) (/ self.siner (double 5s)) (var 968s))
0x0004B8:
    if !(== self.j self.image_yscale) goto 0x0005C4
0x0004D0:
    if !(== self.i self.image_xscale) goto 0x00055C
0x0004E8:
    call (draw_sprite[]:int32 (- (+ self.y (* self.j 20s)) 20s) (- (+ self.x (* self.i 20s)) 20s) (/ self.siner (double 5s)) (var 970s))
    goto 0x0005C4
0x00055C:
    call (draw_sprite[]:int32 (- (+ self.y (* self.j 20s)) 20s) (+ self.x (* self.i 20s)) (/ self.siner (double 5s)) (var 969s))
0x0005C4:
    self.i = (+ self.i 1s)
    goto 0x0003A4
0x0005E0:
    self.j = (+ self.j 1s)
    goto 0x0002B0
0x0005FC:
    exit
