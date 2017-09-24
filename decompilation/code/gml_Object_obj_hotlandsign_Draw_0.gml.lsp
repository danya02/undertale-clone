0x000000:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 52s) (+ self.x 493s) (- self.y 12s) (- self.x 12s))
    if !(== self.inactive 0s) goto 0x0000F0
0x00007C:
    call (draw_sprite_part_ext[]:int32 (var 1s) (var 255s) (var 8s) (var 8s) self.y self.x (var 5s) (var 60s) (var 0s) (- 0s self.xaround) self.image_index (var 1864s))
0x0000F0:
    if !(== self.inactive 1s) goto 0x000180
0x000104:
    call (draw_sprite_part_ext[]:int32 (var 0.5d) (var 255s) (var 8s) (var 8s) self.y self.x (var 5s) (var 60s) (var 0s) (- 0s self.xaround) self.image_index (var 1864s))
0x000180:
    self.i = 0s
    if !(< self.i 60s) goto 0x000268
0x0001A0:
    self.g = 0s
    if (<= 5s 0) goto 0x000248
0x0001C4:
    push 5s
    call (draw_sprite[]:int32 (+ self.y (* self.g 8s)) (+ self.x (* self.i 8s)) (var 0s) (var 1865s))
    self.g = (+ self.g 1s)
    if (bool (- pop 1)) goto 0x0001C4
0x000248:
    push (- pop 1)
    pop
    self.i = (+ self.i 1s)
    goto 0x00018C
0x000268:
    call (draw_set_color[]:int32 (var 32768))
    if !(== self.greenbright 1s) goto 0x0002AC
0x000294:
    call (draw_set_color[]:int32 (var 65280))
0x0002AC:
    call (draw_roundrect[]:int32 (var 1s) (+ self.y 50s) (+ self.x 490s) (- self.y 10s) (- self.x 10s))
    call (draw_set_color[]:int32 (var 32768))
    if !(== self.greenbright 3s) goto 0x000344
0x00032C:
    call (draw_set_color[]:int32 (var 65280))
0x000344:
    call (draw_roundrect[]:int32 (var 1s) (+ self.y 51s) (+ self.x 491s) (- self.y 11s) (- self.x 11s))
    call (draw_set_color[]:int32 (var 32768))
    if !(== self.greenbright 5s) goto 0x0003DC
0x0003C4:
    call (draw_set_color[]:int32 (var 65280))
0x0003DC:
    call (draw_roundrect[]:int32 (var 1s) (+ self.y 52s) (+ self.x 492s) (- self.y 12s) (- self.x 12s))
0x000430:
    exit
