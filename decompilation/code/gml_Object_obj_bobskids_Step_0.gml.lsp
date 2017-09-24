0x000000:
    self.x = (+ (int32 self.parent):x (* (sin[]:int32 (/ self.siner (double 4s))) (+ 60s self.outer)))
    self.y = (+ (int32 self.parent):y (* (cos[]:int32 (/ self.siner (double 4s))) (+ 60s self.outer)))
    self.siner4 = (+ self.siner4 1s)
    self.siner = (+ self.siner (/ (+ (sin[]:int32 (/ self.siner4 (double 12s))) 1.5d) (double 5s)))
    self.outersin = (+ self.outersin 1s)
    self.outer = (* (sin[]:int32 (/ self.outersin (double 12s))) 20s)
    self.gg = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (- self.y 4s) (- (+ self.x (/ self.sprite_width (double 2s))) 2s) (+ self.y 4s) (+ (- self.x (/ self.sprite_width (double 2s))) 2s))
    if !(!= self.gg -4s) goto 0x000220
0x0001F4:
    pushenv (int32 self.gg) 0x000210
0x000204:
    call (instance_destroy[]:int32 )
0x000210:
    popenv 0x000204
0x000214:
    call (instance_destroy[]:int32 )
0x000220:
    exit
