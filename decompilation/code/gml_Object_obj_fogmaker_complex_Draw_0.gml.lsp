0x000000:
    self.dr = (+ self.dr 1s)
    if !(> self.dr 3s) goto 0x000050
0x00002C:
    self.fog_r = (+ self.fog_r 1s)
    self.dr = 0s
0x000050:
    self.fog_alpha = (/ 1570.x self.room_width)
    self.i = 0s
    self.j = 0s
    if (<= 3s 0) goto 0x000200
0x00009C:
    push 3s
    push 32s
    push 3s
    if (<= 32s 0) goto 0x0001C0
0x0000B4:
    self.tfr = (+ (+ self.fog_r self.i) (* self.j 2s))
    if !(>= self.tfr 40s) goto 0x000110
0x0000F8:
    self.tfr = (- self.tfr 40s)
0x000110:
    call (draw_sprite_part_ext[]:int32 self.fog_alpha (var 16777215) (var 1s) (var 1s) (* self.j 80s) (* self.i 20s) (var 80s) (var 20s) (var 0s) self.tfr (var 0s) (var 1933s))
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0000B4
0x0001C0:
    push (- pop 1)
    pop
    self.j = (+ self.j 1s)
    self.i = 0s
    if (bool (- pop 1)) goto 0x00009C
0x000200:
    push (- pop 1)
    pop
    if !(>= self.fog_r 40s) goto 0x000230
0x000218:
    self.fog_r = (- self.fog_r 40s)
0x000230:
    exit
