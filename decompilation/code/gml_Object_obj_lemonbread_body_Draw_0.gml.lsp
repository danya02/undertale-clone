0x000000:
    self.counter = (+ self.counter 1s)
    self.siner = (+ self.siner 1s)
    if !(== self.melting 0s) goto 0x000110
0x000044:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 96s) (- self.x 12s) (/ self.siner (double 10s)) (var 692s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.face_index (var 691s))
0x000110:
    if !(> self.counter 100s) goto 0x000138
0x000124:
    push (< self.counter 150s)
    goto 0x00013C
0x000138:
    push 0s
0x00013C:
    if !pop goto 0x000180
0x000140:
    self.face_index = (+ self.face_index 0.25d)
    if !(>= self.face_index 3s) goto 0x000180
0x000174:
    self.counter = 150s
0x000180:
    if !(> self.counter 200s) goto 0x0001A8
0x000194:
    push (< self.counter 230s)
    goto 0x0001AC
0x0001A8:
    push 0s
0x0001AC:
    if !pop goto 0x000208
0x0001B0:
    self.changed = 1s
    self.face_index = (+ self.face_index 0.5d)
    if !(> self.face_index 6s) goto 0x000208
0x0001F0:
    self.face_index = (- self.face_index 1s)
0x000208:
    if !(== self.counter 230s) goto 0x000228
0x00021C:
    self.face_index = 3s
0x000228:
    if !(> self.counter 260s) goto 0x000288
0x00023C:
    self.face_index = (- self.face_index 0.25d)
    if !(< self.face_index 1s) goto 0x000288
0x000270:
    self.face_index = 0s
    self.counter = -90s
0x000288:
    if !(== self.melting 1s) goto 0x0002B4
0x00029C:
    self.melt_index = 0s
    self.melting = 2s
0x0002B4:
    if !(== self.melting 2s) goto 0x000378
0x0002C8:
    self.melt_index = (+ self.melt_index 0.5d)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 12s) (- self.x 16s) (floor[]:int32 self.melt_index) (var 690s))
    if !(>= self.melt_index 9s) goto 0x000378
0x00036C:
    self.melting = 3s
0x000378:
    if !(== self.melting 4s) goto 0x000478
0x00038C:
    self.melt_index = (- self.melt_index 0.5d)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 12s) (- self.x 16s) (floor[]:int32 self.melt_index) (var 690s))
    if !(< self.melt_index 1s) goto 0x000478
0x000430:
    self.melting = 0s
    if !(== self.changed 0s) goto 0x000460
0x000450:
    self.counter = 80s
    goto 0x00046C
0x000460:
    self.counter = -50s
0x00046C:
    self.face_index = 0s
0x000478:
    exit
