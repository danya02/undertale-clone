0x000000:
    self.b = self.argument0
    self.c = self.argument1
    self.a = (+ self.a 3s)
    self.i = 0s
    if !(< self.i 40s) goto 0x0001B0
0x000058:
    self.a = (+ self.a 1s)
    self.g = 0s
    if !(< self.g 4s) goto 0x000194
0x000090:
    self.f = 0s
    if !(< self.f 8s) goto 0x000178
0x0000B0:
    call (draw_sprite_part[]:int32 (+ (+ self.y self.i) (* 40s self.f)) (+ (+ self.x (* (sin[]:int32 (/ self.a self.b)) self.c)) (* 100s self.g)) (var 2s) self.sprite_width self.i (var 0s) self.image_index self.sprite_index)
    self.f = (+ self.f 1s)
    goto 0x00009C
0x000178:
    self.g = (+ self.g 1s)
    goto 0x00007C
0x000194:
    self.i = (+ self.i 2s)
    goto 0x000044
0x0001B0:
    exit
