0x000000:
    self.sinvalue = 0s
    if !(== self.hspeed 0s) goto 0x000074
0x000020:
    self.sinvalue = (+ self.sinvalue (* (sin[]:int32 (/ self.siner (double 3s))) 2s))
    self.image_angle = (+ self.image_angle self.sinvalue)
0x000074:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.image_angle self.image_yscale self.image_xscale (+ self.y (- (random[]:int32 (* self.shaker 2s)) self.shaker)) (+ (+ self.x self.sinvalue) (- (random[]:int32 (* self.shaker 2s)) self.shaker)) self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.image_angle self.image_yscale self.image_xscale (- self.y (* (sin[]:int32 (/ self.siner (double 4s))) 5s)) (+ self.x self.sinvalue) (/ self.siner (double 6s)) self.arms)
    if !(== self.sineron 1s) goto 0x0001EC
0x0001D4:
    self.siner = (+ self.siner 1s)
0x0001EC:
    exit
