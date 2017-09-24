0x000000:
    self.b = self.argument0
    self.c = self.argument1
    self.a = (+ self.a 1s)
    self.i = self.room_height
    if !(> self.i 0s) goto 0x000140
0x00005C:
    self.a = (+ self.a 1s)
    push self.image_alpha
    push (var 16777215)
    call (draw_background_part_ext[]:int32 (var 1s) (var 1s) (+ self.y self.i) (+ self.x (* (sin[]:int32 (/ self.a self.b)) self.c)) (var 1s) -1s 0s:background_width self.i (var 0s) -1s 0s:background_index)
    self.i = (- self.i 1s)
    goto 0x000048
0x000140:
    exit
