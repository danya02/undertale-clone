0x000000:
    call (draw_sprite_part[]:int32 (var 30s) (var 0s) (- self.sprite_height self.h) (var 320s) (- self.sprite_height (+ self.h 100s)) (var 0s) self.image_index self.sprite_index)
    if !(== self.go 1s) goto 0x000098
0x000080:
    self.h = (+ self.h 1s)
0x000098:
    if !(> self.h 240s) goto 0x0000C4
0x0000AC:
    self.h = (- self.h 1s)
0x0000C4:
    exit
