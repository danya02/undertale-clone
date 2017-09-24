0x000000:
    if !(< self.x (+ (- (/ self.room_width (double 2s)) (/ self.sprite_width (double 2s))) 240s)) goto 0x000050
0x000044:
    self.speed = 0s
0x000050:
    push -5s
    if !(== 0s:monster 0s) goto 0x000078
0x00006C:
    self.image_index = 1s
0x000078:
    exit
