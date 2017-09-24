0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    if !(>= self.timer 640s) goto 0x000054
0x000040:
    push (== self.death 0s)
    goto 0x000058
0x000054:
    push 0s
0x000058:
    if !pop goto 0x0000B4
0x00005C:
    self.depth = -90000
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
0x0000B4:
    if !(== self.death 1s) goto 0x0000DC
0x0000C8:
    push (>= self.timer 850s)
    goto 0x0000E0
0x0000DC:
    push 0s
0x0000E0:
    if !pop goto 0x00013C
0x0000E4:
    self.depth = -90000
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
0x00013C:
    exit
