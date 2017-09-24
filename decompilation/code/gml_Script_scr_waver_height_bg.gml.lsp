0x000000:
    self.b = self.argument0
    self.c = self.argument1
    self.a = (+ self.a 1s)
    push -1s
    self.i = 0s:background_height
    if !(> self.i 0s) goto 0x0001B0
0x000064:
    self.a = (+ self.a 1s)
    if !(> self.c 0s) goto 0x0000B0
0x000090:
    self.c = (- self.c 0.1d)
0x0000B0:
    if !(< self.c 0s) goto 0x0000E4
0x0000C4:
    self.c = (- self.c 0.1d)
0x0000E4:
    push self.image_alpha
    push (var 16777215)
    call (draw_background_part_ext[]:int32 (var 1s) (var 1s) (+ self.y self.i) (+ self.x (* (sin[]:int32 (/ self.a self.b)) self.c)) (var 1s) -1s 0s:background_width self.i (var 0s) -1s 0s:background_index)
    self.i = (- self.i 1s)
    goto 0x000050
0x0001B0:
    exit
