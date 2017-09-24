0x000000:
    self.pitch = (+ 0.3d (random[]:int32 (var 0.4d)))
    if !(bool (caster_is_playing[]:int32 global.batmusic)) goto 0x000064
0x000048:
    call (caster_set_pitch[]:int32 self.pitch global.batmusic)
0x000064:
    stog.alarm[0s] = (+ 4s (random[]:int32 (var 120s)))
0x00008C:
    exit
