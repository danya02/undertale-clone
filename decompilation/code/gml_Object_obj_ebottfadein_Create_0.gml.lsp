0x000000:
    self.x = 120s
    self.y = 120s
    self.timer = 0s
    self.image_speed = 0s
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.image_alpha = 0s
    self.n_timer = 0s
    self.n_index = 0s
    self.n_alpha = 0s
    self.n_active = 0s
    self.offer = 0s
    call (draw_set_alpha[]:int32 (var 1s))
    push -5s
    call (caster_stop[]:int32 7s:endsong)
    push (var 1s)
    self.s8 = (caster_play[]:int32 (var 1s) -5s 8s:endsong)
    self.noise = (caster_load[]:int32 (var "music/f_noise.ogg"))
    self.noise = (caster_loop[]:int32 (var 1s) (var 0s) self.noise)
    global.inbattle = 1s
0x000140:
    exit
