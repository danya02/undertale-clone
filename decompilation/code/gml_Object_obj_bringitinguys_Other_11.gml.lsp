0x000000:
    push 268s
    stog.sprite_index* = (int32 self.guy_r3)
    push 316s
    stog.sprite_index* = (int32 self.guy_r2)
    push 388s
    stog.face* = (int32 self.guy_r)
    self.shake = 1s
0x000054:
    exit
