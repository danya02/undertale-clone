0x000000:
    self.sprite_index = global.monstersprite
    self.image_alpha = 0.5d
    call (snd_stop[]:int32 (var 91s))
    call (snd_play[]:int32 (var 91s))
    self.n = 0s
    if !(< self.n 14s) goto 0x0001D8
0x00006C:
    self.j = (instance_create[]:int32 (var 182s) (- (+ (+ (random[]:int32 (/ self.sprite_height (double 2s))) (/ self.sprite_width (double 4s))) self.y) 8s) (- (+ (+ (random[]:int32 (/ self.sprite_width (double 2s))) (/ self.sprite_width (double 4s))) self.x) 8s))
    push (/ (- (+ 8s (int32 self.j):x) self.x) (/ self.sprite_width (double 2s)))
    stog.rightside* = (int32 self.j)
    push (/ (- (+ 8s (int32 self.j):y) self.y) (/ self.sprite_height (double 2s)))
    stog.topside* = (int32 self.j)
    self.n = (+ self.n 1s)
    goto 0x000058
0x0001D8:
    exit
