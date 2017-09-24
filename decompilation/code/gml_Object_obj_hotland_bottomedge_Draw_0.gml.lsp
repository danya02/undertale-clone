0x000000:
    self.siner = (+ self.siner 1s)
    if !(>= self.image_xscale 0s) goto 0x00020C
0x00002C:
    self.i = 0s
    if !(< self.i self.image_xscale) goto 0x000178
0x000050:
    if !(== self.i 0s) goto 0x0000A0
0x000064:
    call (draw_sprite[]:int32 self.y self.x (/ self.siner (double 2s)) (var 908s))
    goto 0x00015C
0x0000A0:
    if !(== self.i (- self.image_xscale 1s)) goto 0x000110
0x0000C0:
    call (draw_sprite[]:int32 self.y (+ self.x (* self.i 20s)) (/ self.siner (double 2s)) (var 911s))
    goto 0x00015C
0x000110:
    call (draw_sprite[]:int32 self.y (+ self.x (* self.i 20s)) (/ self.siner (double 2s)) (var 907s))
0x00015C:
    self.i = (+ self.i 1s)
    goto 0x000038
0x000178:
    call (draw_set_color[]:int32 (var 0s))
    if !(== self.room 171s) goto 0x000208
0x0001A0:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (* 20s self.image_xscale) (+ self.y 19s) self.x (var 0s) (var 906s))
0x000208:
    goto 0x0002E4
0x00020C:
    call (draw_sprite[]:int32 self.y (- self.x 20s) (/ self.siner (double 2s)) (var 911s))
    self.i = 1s
    if !(< self.i (- self.image_xscale)) goto 0x0002E4
0x000274:
    call (draw_sprite[]:int32 self.y (- (- self.x (* self.i 20s)) 20s) (/ self.siner (double 2s)) (var 907s))
    self.i = (+ self.i 1s)
    goto 0x000258
0x0002E4:
    exit
