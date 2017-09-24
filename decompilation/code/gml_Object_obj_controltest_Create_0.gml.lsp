0x000000:
    global.starton9 = 1s
    self.buffer = 3s
    self.z_index = 0s
    self.x_index = 0s
    self.c_index = 0s
    self.s_snare = (caster_load[]:int32 (var "music/drum/snare.ogg"))
    self.s_kick = (caster_load[]:int32 (var "music/drum/kick.ogg"))
    self.s_cymbal = (caster_load[]:int32 (var "music/drum/cymbal.ogg"))
    self.s_cuica = (caster_load[]:int32 (var "music/drum/cuica.ogg"))
    self.s_cuica2 = (caster_load[]:int32 (var "music/drum/cuica2.ogg"))
    self.fun = 0s
    if !(bool (file_exists[]:int32 (var "undertale.ini"))) goto 0x000164
0x0000F0:
    self.fun = 1s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.tr = (ini_read_real[]:int32 (var -1s) (var "EndF") (var "EndF"))
    if !(>= self.tr 2s) goto 0x000164
0x000158:
    self.fun = 0s
0x000164:
    self.image_speed = 0s
    self.borderl = 60s
    self.borderr = 260s
    self.borderu = 140s
    if !(== self.fun 0s) goto 0x0001C0
0x0001A8:
    call (tile_layer_hide[]:int32 (var 1100000))
0x0001C0:
    exit
