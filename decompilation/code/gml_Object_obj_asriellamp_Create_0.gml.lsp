0x000000:
    self.myinteract = 0s
    self.read = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    if !(== global.plot 0s) goto 0x000050
0x000044:
    call (instance_destroy[]:int32 )
0x000050:
    self.active = 1s
    push -5s
    if !(== 7s:flag 1s) goto 0x000084
0x000078:
    self.active = 0s
0x000084:
    if !(== self.active 1s) goto 0x000124
0x000098:
    stog.idealvolume[0s] = 1s
    stog.idealvolume[1s] = 0s
    self.curvol1 = (caster_get_volume[]:int32 global.currentsong)
    self.curvol2 = (caster_get_volume[]:int32 global.currentsong2)
    self.crumblebaby = (audio_sound_get_track_position[]:int32 global.currentsong)
    call (audio_sound_set_track_position[]:int32 self.crumblebaby global.currentsong2)
0x000124:
    exit
