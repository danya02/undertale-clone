0x000000:
    self.image_blend = (merge_color[]:int32 (random[]:int32 (var 1s)) (var 16776960) (var 16711680))
    self.image_blend = (merge_color[]:int32 (random[]:int32 (var 0.5d)) (var 16777215) self.image_blend)
    self.c = (choose[]:int32 (var 2s) (var 1s) (var 0s))
    self.o = (choose[]:int32 (var 1s) (var 0s))
    if !(== self.c 0s) goto 0x000128
0x0000D0:
    self.x = (+ 2s (random[]:int32 (var 18s)))
    self.vspeed = 26s
    self.image_yscale = 6s
    self.image_alpha = 0.9d
    self.y = -100s
0x000128:
    if !(== self.c 1s) goto 0x000194
0x00013C:
    self.x = (+ 18s (random[]:int32 (var 18s)))
    self.vspeed = 22s
    self.image_yscale = 4s
    self.image_alpha = 0.7d
    self.y = -70s
0x000194:
    if !(== self.c 2s) goto 0x000200
0x0001A8:
    self.x = (+ 30s (random[]:int32 (var 40s)))
    self.vspeed = 15s
    self.image_yscale = 3s
    self.image_alpha = 0.3d
    self.y = -40s
0x000200:
    if !(== self.o 1s) goto 0x000238
0x000214:
    self.x = (- (- self.room_width self.x) 4s)
0x000238:
    exit
