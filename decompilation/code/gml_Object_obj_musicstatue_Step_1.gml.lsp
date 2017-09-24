0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== self.con 1s) goto 0x0000D4
0x000048:
    self.con = 2s
    self.musicbox = (caster_load[]:int32 (var "music/musicbox.ogg"))
    call (caster_loop[]:int32 (var 0.9d) (var 0.25d) self.musicbox)
    self.image_index = 1s
    self.boxactive = 1s
    push 1s
    stog.image_index* = (int32 self.mask)
0x0000D4:
    if !(== self.boxactive 1s) goto 0x000100
0x0000E8:
    push (bool (instance_exists[]:int32 (var 1570s)))
    goto 0x000104
0x000100:
    push 0s
0x000104:
    if !pop goto 0x000164
0x000108:
    self.disto = (distance_to_object[]:int32 (var 1570s))
    if !(< self.disto 76s) goto 0x000164
0x000134:
    call (caster_set_volume[]:int32 (/ (- 100s self.disto) (double 100s)) self.musicbox)
0x000164:
    exit
