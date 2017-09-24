0x000000:
    self.thisvol = (- self.thisvol 0.2d)
    call (caster_set_volume[]:int32 self.thisvol global.batmusic)
    call (caster_set_volume[]:int32 self.thisvol global.batmusic2)
0x000058:
    exit
