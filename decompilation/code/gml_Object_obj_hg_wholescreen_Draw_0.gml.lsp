0x000000:
    if !(== self.con 0s) goto 0x00007C
0x000014:
    [obj_asriel_body].image_alpha = (- 569.image_alpha 0.1d)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) self.yy2 self.xx2 self.yy self.xx)
0x00007C:
    if !(== self.con 2s) goto 0x000144
0x000090:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_alpha[]:int32 self.scr)
    call (draw_rectangle[]:int32 (var 0s) self.yy2 self.xx2 self.yy self.xx)
    self.scr = (- self.scr 0.1d)
    call (draw_set_alpha[]:int32 (var 1s))
    if !(<= self.scr 0s) goto 0x000144
0x000138:
    call (instance_destroy[]:int32 )
0x000144:
    if !(> self.xx -100s) goto 0x000170
0x000158:
    self.xx = (- self.xx 10s)
0x000170:
    if !(> self.yy -100s) goto 0x00019C
0x000184:
    self.yy = (- self.yy 10s)
0x00019C:
    if !(< self.xx2 800s) goto 0x0001C8
0x0001B0:
    self.xx2 = (+ self.xx2 10s)
0x0001C8:
    if !(< self.yy2 800s) goto 0x0001F4
0x0001DC:
    self.yy2 = (+ self.yy2 10s)
0x0001F4:
    call (draw_set_color[]:int32 (var 16777215))
    self.i = 0s
    if !(< self.i 4s) goto 0x0002AC
0x00022C:
    call (draw_rectangle[]:int32 (var 1s) (+ self.yy2 self.i) (+ self.xx2 self.i) (+ self.yy self.i) (+ self.xx self.i))
    self.i = (+ self.i 1s)
    goto 0x000218
0x0002AC:
    exit
