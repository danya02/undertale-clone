0x000000:
    push (- (+ self.x self.sprite_width) 6s)
    stog.x* = (int32 self.mychip)
0x000030:
    exit
