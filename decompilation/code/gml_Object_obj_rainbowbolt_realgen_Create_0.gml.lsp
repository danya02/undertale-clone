0x000000:
    self.con = 0s
    self.timer = 0s
    self.i = 0s
    self.lithit = (caster_load[]:int32 (var "music/sfx/sfx_a_lithit.ogg"))
    self.lithit2 = 168s
    call (audio_sound_gain[]:int32 (var 0s) (var 1s) self.lithit)
    call (audio_sound_gain[]:int32 (var 0s) (var 1s) self.lithit2)
    call (audio_sound_pitch[]:int32 (var 1s) self.lithit)
    call (audio_sound_pitch[]:int32 (var 1s) self.lithit2)
    self.er = (caster_load[]:int32 (var "music/sfx/sfx_menu_error.ogg"))
    self.hit = 0s
    self.rr = 0s
    self.h_mode = 0s
    self.l_buffer = 0s
    self.o_o = 0s
    self.perturn = 0s
    self.lh = 0s
0x00013C:
    exit
