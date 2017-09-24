0x000000:
    call (draw_set_alpha[]:int32 (var 1s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) self.image_yscale self.image_xscale self.y self.x self.image_index self.sprite_index)
    call (draw_set_font[]:int32 (var 2s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (var 0s) (var 10s) (var 6s) (var "THE END") (var 450s) (var 180s))
    if !(== self.n_timer 7s) goto 0x0000F8
0x0000EC:
    self.n_alpha = 0s
0x0000F8:
    if !(>= self.n_timer 8s) goto 0x000120
0x00010C:
    push (<= self.n_timer 16s)
    goto 0x000124
0x000120:
    push 0s
0x000124:
    if !pop goto 0x00018C
0x000128:
    self.n_alpha = (+ self.n_alpha 0.25d)
    if !(> self.n_alpha 0.75d) goto 0x000178
0x000164:
    self.n_alpha = 0.75d
0x000178:
    call (event_user[]:int32 (var 0s))
0x00018C:
    if !(== self.n_timer 19s) goto 0x0001AC
0x0001A0:
    self.n_alpha = 0s
0x0001AC:
    if !(>= self.n_timer 24s) goto 0x0001D4
0x0001C0:
    push (<= self.n_timer 30s)
    goto 0x0001D8
0x0001D4:
    push 0s
0x0001D8:
    if !pop goto 0x000240
0x0001DC:
    self.n_alpha = (+ self.n_alpha 0.25d)
    if !(> self.n_alpha 0.75d) goto 0x00022C
0x000218:
    self.n_alpha = 0.75d
0x00022C:
    call (event_user[]:int32 (var 0s))
0x000240:
    if !(== self.n_timer 40s) goto 0x000260
0x000254:
    self.n_alpha = 0s
0x000260:
    if !(>= self.n_timer 60s) goto 0x0002BC
0x000274:
    if !(< self.n_alpha 1s) goto 0x0002A8
0x000288:
    self.n_alpha = (+ self.n_alpha 0.25d)
0x0002A8:
    call (event_user[]:int32 (var 0s))
0x0002BC:
    if !(>= self.n_timer 140s) goto 0x0002F8
0x0002D0:
    call (caster_free[]:int32 (var -3s))
    call (room_goto[]:int32 (var 284s))
0x0002F8:
    call (caster_set_volume[]:int32 (- 1s self.n_alpha) self.s8)
    call (caster_set_volume[]:int32 self.n_alpha self.noise)
    call (audio_sound_gain[]:int32 (var 1s) (var 0.9d) (var 351s))
    if !(== self.n_active 1s) goto 0x000390
0x000378:
    self.n_timer = (+ self.n_timer 1s)
0x000390:
    exit
