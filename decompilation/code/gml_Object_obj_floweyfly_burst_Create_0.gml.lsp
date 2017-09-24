0x000000:
    self.image_xscale = 0.5d
    self.image_yscale = 0.5d
    self.image_angle = (random[]:int32 (var 360s))
    self.image_alpha = 1s
    self.aa = (- (random[]:int32 (var 6s)) (random[]:int32 (var 6s)))
    self.hspeed = (- (random[]:int32 (var 1s)) (random[]:int32 (var 1s)))
    self.vspeed = (- (random[]:int32 (var 1s)) (random[]:int32 (var 1s)))
    self.image_speed = 0s
    self.image_index = (random[]:int32 (var 40s))
    if !(bool (audio_is_playing[]:int32 (var 110s))) goto 0x000120
0x00010C:
    call (snd_stop[]:int32 (var 110s))
0x000120:
    call (snd_play[]:int32 (var 110s))
0x000134:
    exit
