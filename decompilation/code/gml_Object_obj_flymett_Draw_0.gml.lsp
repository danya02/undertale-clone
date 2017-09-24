0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    if (== self.mode 1s) goto 0x000054
0x000040:
    push (== self.mode 3s)
    goto 0x000058
0x000054:
    push 1s
0x000058:
    if !pop goto 0x0000AC
0x00005C:
    self.ang = (point_direction[]:int32 (+ 1185.y 10s) (+ 1185.x 10s) (+ self.y 15s) (+ self.x 11s))
0x0000AC:
    if !(== self.mode 3s) goto 0x0000EC
0x0000C0:
    self.ang = (+ self.ang (- (random[]:int32 (var 60s)) 30s))
0x0000EC:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.ang (var 1s) (var 1s) (+ self.y 15s) (+ self.x 11s) (var 0s) (var 1707s))
0x000154:
    exit
