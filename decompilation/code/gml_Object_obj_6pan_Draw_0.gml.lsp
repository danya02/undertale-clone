0x000000:
    self.siner = (+ self.siner 1s)
    call (draw_set_color[]:int32 (var 0s))
    self.xox = (lengthdir_x[]:int32 (+ self.rot 180s) (var 220s))
    self.yoy = (lengthdir_y[]:int32 (+ self.rot 180s) (var 220s))
    call (draw_triangle[]:int32 (var 0s) (+ self.y 80s) (+ (+ -20s self.x) (/ self.xox (double 2s))) (+ self.y self.yoy) (+ self.x self.xox) self.y self.x)
    if !(== self.ss 1s) goto 0x000184
0x000114:
    self.x = (+ self.x (* (sin[]:int32 (/ self.siner (double 3s))) 5s))
    self.y = (+ self.y (* (cos[]:int32 (/ self.siner (double 2s))) 2s))
0x000184:
    if !(== self.image_index 0s) goto 0x0001F0
0x000198:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) self.rot self.image_yscale self.image_xscale self.y self.x (var 0s) self.sprite_index)
0x0001F0:
    if !(== self.image_index 1s) goto 0x000264
0x000204:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (+ self.rot 40s) self.image_yscale self.image_xscale self.y self.x (var 1s) self.sprite_index)
0x000264:
    self.counter = (+ self.counter 1s)
    if !(> self.counter 57s) goto 0x0002A4
0x000290:
    push (< self.counter 60s)
    goto 0x0002A8
0x0002A4:
    push 0s
0x0002A8:
    if !pop goto 0x0002C4
0x0002AC:
    self.rot = (+ self.rot 2s)
0x0002C4:
    if !(> self.counter 60s) goto 0x0002EC
0x0002D8:
    push (< self.counter 62s)
    goto 0x0002F0
0x0002EC:
    push 0s
0x0002F0:
    if !pop goto 0x0005D8
0x0002F4:
    self.rot = (- self.rot 8s)
    if !(== self.spec 1s) goto 0x000338
0x000320:
    self.num = (+ self.num 1s)
0x000338:
    if !(!= self.num 12s) goto 0x0005A0
0x00034C:
    self.xox = (lengthdir_x[]:int32 (+ self.rot 180s) (var 150s))
    self.yoy = (lengthdir_x[]:int32 (+ self.rot 180s) (var 70s))
    self.fr = (instance_create[]:int32 (var 1618s) (+ self.y self.yoy) (+ self.x self.xox))
    stog.gravity* = (+ (int32 self.fr):gravity (+ 0.1d (random[]:int32 (var 0.08d))))
    self.fr = (instance_create[]:int32 (var 1618s) (+ self.y self.yoy) (+ self.x self.xox))
    self.fr = (instance_create[]:int32 (var 1618s) (+ self.y self.yoy) (+ self.x self.xox))
    stog.gravity* = (+ (int32 self.fr):gravity (+ 0.07d (random[]:int32 (var 0.06d))))
    self.fr = (instance_create[]:int32 (var 1618s) (+ self.y self.yoy) (+ self.x self.xox))
    stog.gravity* = (+ (int32 self.fr):gravity (+ 0.05d (random[]:int32 (var 0.04d))))
    push self.id
    stog.panparent* = (int32 self.fr)
    goto 0x0005D8
0x0005A0:
    push (int32 self.fr)
    push (int32 self.fr)
    push (int32 self.fr)
    self.act = (instance_create[]:int32 (var 1620s) (- self.y 10s) (- self.x 140s))
0x0005D8:
    if !(>= self.counter 63s) goto 0x000600
0x0005EC:
    push (< self.counter 67s)
    goto 0x000604
0x000600:
    push 0s
0x000604:
    if !pop goto 0x000620
0x000608:
    self.rot = (- self.rot 3s)
0x000620:
    if !(>= self.counter 63s) goto 0x000648
0x000634:
    push (< self.counter 72s)
    goto 0x00064C
0x000648:
    push 0s
0x00064C:
    if !pop goto 0x00065C
0x000650:
    self.ss = 0s
0x00065C:
    if !(> self.counter 70s) goto 0x000684
0x000670:
    push (< self.counter 72s)
    goto 0x000688
0x000684:
    push 0s
0x000688:
    if !pop goto 0x0006A4
0x00068C:
    self.rot = (+ self.rot 6s)
0x0006A4:
    if !(>= self.counter 72s) goto 0x000734
0x0006B8:
    self.image_index = 0s
    self.rot = (+ self.rot 5s)
    if !(> self.rot 3s) goto 0x000734
0x0006F0:
    self.ss = 1s
    self.rot = 0s
    self.counter = 50s
    if !(== self.num 12s) goto 0x000734
0x000728:
    self.counter = -20s
0x000734:
    exit
