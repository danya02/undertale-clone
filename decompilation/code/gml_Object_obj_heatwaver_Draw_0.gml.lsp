0x000000:
    self.x = 759.x
    self.y = 759.y
    self.xa = 760.x
    self.ya = 761.y
    if !(== self.drawngr 1s) goto 0x000068
0x000054:
    call (sprite_delete[]:int32 self.gr)
0x000068:
    self.gr = (sprite_create_from_screen_x[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (- self.ya self.y) (- self.xa self.x) self.y self.x)
    self.sprite_index = self.gr
    call (scr_fx_waver[]:int32 self.cfactor (/ self.sprite_height (double 50s)))
    self.drawngr = 1s
0x000114:
    exit
