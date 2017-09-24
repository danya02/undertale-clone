0x000000:
    self.counter = (+ self.counter 1s)
    self.bodycounter = (+ self.bodycounter 1s)
    self.siner = (+ self.siner 1s)
    if !(> self.counter 60s) goto 0x000070
0x00005C:
    push (< self.counter 80s)
    goto 0x000074
0x000070:
    push 0s
0x000074:
    if !pop goto 0x0000B8
0x000078:
    self.head_index = (+ self.head_index 0.5d)
    if !(>= self.head_index 6s) goto 0x0000B8
0x0000AC:
    self.counter = 100s
0x0000B8:
    if !(> self.counter 130s) goto 0x0000E0
0x0000CC:
    push (< self.counter 160s)
    goto 0x0000E4
0x0000E0:
    push 0s
0x0000E4:
    if !pop goto 0x000134
0x0000E8:
    self.head_index = (- self.head_index 0.5d)
    if !(< self.head_index 1s) goto 0x000134
0x00011C:
    self.head_index = 0s
    self.counter = 160s
0x000134:
    if !(> self.counter 200s) goto 0x00015C
0x000148:
    push (< self.counter 210s)
    goto 0x000160
0x00015C:
    push 0s
0x000160:
    if !pop goto 0x000188
0x000164:
    self.head_index = 0s
    self.headsprite = 712s
    self.counter = 210s
0x000188:
    if !(> self.counter 210s) goto 0x0001F4
0x00019C:
    self.head_index = (+ self.head_index 0.5d)
    if !(> self.head_index 14s) goto 0x0001F4
0x0001D0:
    self.head_index = 0s
    self.counter = -30s
    self.headsprite = 713s
0x0001F4:
    if !(> self.bodycounter 150s) goto 0x000254
0x000208:
    self.torso_index = (+ self.torso_index 0.2d)
    if !(> self.torso_index 7s) goto 0x000254
0x00023C:
    self.bodycounter = 0s
    self.torso_index = 0s
0x000254:
    self.sx = (* (sin[]:int32 (/ self.siner (double 10s))) 5s)
    self.sy = (abs[]:int32 (* (cos[]:int32 (/ self.siner (double 8s))) 6s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) self.ystretch (var 2s) (- (+ (+ self.y 90s) self.sy) (* self.mstretch 20s)) (+ (+ self.x 14s) self.sx) (floor[]:int32 self.torso_index) (var 711s))
    if !(== self.stretchup 2s) goto 0x0003EC
0x000364:
    if !(> self.ystretch 0s) goto 0x00039C
0x000378:
    self.ystretch = (- self.ystretch 0.1d)
    goto 0x0003A8
0x00039C:
    self.ystretch = 0s
0x0003A8:
    if !(< self.mstretch 2s) goto 0x0003E0
0x0003BC:
    self.mstretch = (+ self.mstretch 0.05d)
    goto 0x0003EC
0x0003E0:
    self.mstretch = 2s
0x0003EC:
    if !(== self.stretchup 1s) goto 0x000444
0x000400:
    if !(> self.ystretch 2s) goto 0x000438
0x000414:
    self.ystretch = (- self.ystretch 0.2d)
    goto 0x000444
0x000438:
    self.ystretch = 2s
0x000444:
    if !(== self.stretchup 0s) goto 0x00049C
0x000458:
    if !(< self.ystretch 4s) goto 0x000490
0x00046C:
    self.ystretch = (+ self.ystretch 0.2d)
    goto 0x00049C
0x000490:
    self.ystretch = 4s
0x00049C:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (- 2s self.mstretch) (var 2s) self.y self.x (floor[]:int32 self.head_index) self.headsprite)
0x000504:
    exit
