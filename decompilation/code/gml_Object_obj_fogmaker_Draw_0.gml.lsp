0x000000:
    self.dr = (+ self.dr 1s)
    if !(> self.dr 3s) goto 0x000050
0x00002C:
    self.fog_r = (+ self.fog_r 1s)
    self.dr = 0s
0x000050:
    if !(== self.s 0s) goto 0x000080
0x000064:
    self.fog_alpha = (/ 1570.x (double 440s))
0x000080:
    if !(> self.fog_alpha 1s) goto 0x0000BC
0x000094:
    if !(== self.s 0s) goto 0x0000BC
0x0000A8:
    push (> global.plot 99s)
    goto 0x0000C0
0x0000BC:
    push 0s
0x0000C0:
    if !pop goto 0x0000E4
0x0000C4:
    self.fog_alpha = (+ 1s (- 1s self.fog_alpha))
0x0000E4:
    self.i = 0s
    self.j = 0s
    if (<= 3s 0) goto 0x00021C
0x000114:
    push 3s
    push 13s
    push 3s
    if (<= 13s 0) goto 0x0001DC
0x00012C:
    call (draw_sprite_part_ext[]:int32 self.fog_alpha (var 16777215) (var 1s) (var 1s) (* self.j 80s) (* self.i 80s) (var 80s) (var 80s) (var 0s) self.fog_r (var 0s) (var 1933s))
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x00012C
0x0001DC:
    push (- pop 1)
    pop
    self.j = (+ self.j 1s)
    self.i = 0s
    if (bool (- pop 1)) goto 0x000114
0x00021C:
    push (- pop 1)
    pop
    if !(>= self.fog_r 80s) goto 0x00024C
0x000234:
    self.fog_r = (- self.fog_r 80s)
0x00024C:
    exit
