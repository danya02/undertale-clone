0x000000:
    call (draw_set_circle_precision[]:int32 (var 24s))
    self.offon = (+ self.offon 1s)
    if !(> self.offon 2s) goto 0x00004C
0x000040:
    self.offon = 0s
0x00004C:
    if !(== self.offon 0s) goto 0x000074
0x000060:
    call (draw_set_color[]:int32 (var 255s))
0x000074:
    if !(== self.offon 1s) goto 0x0000A0
0x000088:
    call (draw_set_color[]:int32 (var 4235519))
0x0000A0:
    if !(== self.offon 2s) goto 0x0000CC
0x0000B4:
    call (draw_set_color[]:int32 (var 65535))
0x0000CC:
    self.image_alpha = (+ self.image_alpha 0.334d)
    if !(> self.image_alpha 6s) goto 0x000118
0x000100:
    call (draw_set_color[]:int32 (var 16777215))
0x000118:
    call (draw_set_alpha[]:int32 self.image_alpha)
    call (draw_circle[]:int32 (var 1s) (var 60s) self.y self.x)
    call (draw_set_alpha[]:int32 (var 1s))
    if !(> self.image_alpha (+ 8s self.bonus)) goto 0x0001BC
0x00018C:
    call (instance_create[]:int32 (var 1646s) self.y self.x)
    call (instance_destroy[]:int32 )
0x0001BC:
    exit
