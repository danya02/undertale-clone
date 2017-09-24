0x000000:
    push -5s
    push (- (- (int32 self.myself):monsterhp global.at) global.wstrength)
    self.mercy = (- (+ -5s (int32 self.myself):monsterdef) self.mercymod)
0x000060:
    exit
