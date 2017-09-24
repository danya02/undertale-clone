0x000000:
    self.mysong = global.currentsong
    self.volume = (caster_get_volume[]:int32 self.mysong)
    self.fvolume = self.volume
    self.fadespeed = 0.1d
    self.resume = 0s
0x000058:
    exit
