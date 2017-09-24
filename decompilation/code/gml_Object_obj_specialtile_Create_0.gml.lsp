0x000000:
    self.gg = (random[]:int32 (var 128s))
    self.mygrey = (make_color_rgb[]:int32 (+ self.gg 120s) (+ self.gg 120s) (+ self.gg 120s))
    self.garfield = 30s
    self.rando = 0s
    self.randofactor = 25s
    self.finalrando = 0s
    if !(== self.id (instance_find[]:int32 (var 1s) self.object_index)) goto 0x0000C0
0x0000B0:
    self.kingrando = 1s
    goto 0x0000CC
0x0000C0:
    self.kingrando = 0s
0x0000CC:
    exit
