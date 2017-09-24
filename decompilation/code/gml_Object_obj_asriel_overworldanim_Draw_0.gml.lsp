0x000000:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) self.image_yscale self.image_xscale self.y self.x (floor[]:int32 self.image_index) self.sprite_index)
    if (== self.con 11s) goto 0x000084
0x000070:
    push (== self.con 12s)
    goto 0x000088
0x000084:
    push 1s
0x000088:
    if !pop goto 0x0001F4
0x00008C:
    self.whited = (+ self.whited 0.01d)
    if !(>= self.whited 1s) goto 0x0000D4
0x0000C0:
    push (== self.con 11s)
    goto 0x0000D8
0x0000D4:
    push 0s
0x0000D8:
    if !pop goto 0x000110
0x0000DC:
    self.con = 12s
    stog.view_xview[0s] = 0s
    stog.view_yview[0s] = 0s
0x000110:
    call (draw_set_alpha[]:int32 self.whited)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(>= self.whited 2s) goto 0x0001F4
0x000198:
    call (instance_create[]:int32 (var 1682s) (var 0s) (var 0s))
    self.con = 13s
    pushenv 1683s 0x0001DC
0x0001D0:
    call (instance_destroy[]:int32 )
0x0001DC:
    popenv 0x0001D0
0x0001E0:
    stog.alarm[5s] = -1s
0x0001F4:
    exit
