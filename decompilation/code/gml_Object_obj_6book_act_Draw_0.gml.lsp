0x000000:
    if !(== self.type 1s) goto 0x000034
0x000014:
    self.image_alpha = (- self.image_alpha 0.04d)
0x000034:
    if !(< self.image_alpha 0.08d) goto 0x00005C
0x000050:
    call (instance_destroy[]:int32 )
0x00005C:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) self.image_angle (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
    if !(== self.con 999999) goto 0x000280
0x0000CC:
    if !(> self.con 0s) goto 0x0000F4
0x0000E0:
    push (< self.con 3s)
    goto 0x0000F8
0x0000F4:
    push 0s
0x0000F8:
    if !pop goto 0x0001D0
0x0000FC:
    self.image_alpha = (- self.image_alpha 0.02d)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 240s) (var 500s) (var 150s) (var 200s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 10s))
    call (draw_text_transformed[]:int32 (var 0s) (var 2s) (var 2s) (var "You called for help...") (var 180s) (var 200s))
0x0001D0:
    if !(== self.con 2s) goto 0x000238
0x0001E4:
    self.type = 1s
    pushenv 1622s 0x00020C
0x0001F8:
    call (event_user[]:int32 (var 5s))
0x00020C:
    popenv 0x0001F8
0x000210:
    self.con = 2.1d
    stog.alarm[4s] = 50s
0x000238:
    if !(== self.con 3.1d) goto 0x000280
0x000254:
    pushenv 1622s 0x000270
0x00025C:
    call (event_user[]:int32 (var 4s))
0x000270:
    popenv 0x00025C
0x000274:
    self.con = 3s
0x000280:
    exit
