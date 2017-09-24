0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    if !(== self.active 1s) goto 0x0000D0
0x000040:
    self.i = 0s
    if !(< self.i self.ammo) goto 0x0000D0
0x000064:
    call (draw_sprite[]:int32 (- self.y 2s) (+ (+ self.x 20s) (* self.i 10s)) (var 0s) (var 1815s))
    self.i = (+ self.i 1s)
    goto 0x00004C
0x0000D0:
    call (draw_set_color[]:int32 (var 16777215))
    if !(> self.win 0s) goto 0x000114
0x0000FC:
    call (draw_set_color[]:int32 (var 65280))
0x000114:
    call (draw_rectangle[]:int32 (var 1s) (+ self.gridd 1s) (+ self.gridr 1s) (- self.gridu 2s) (- self.gridl 2s))
    if !(>= self.wintimer 50s) goto 0x0001D4
0x00017C:
    call (draw_sprite[]:int32 (- self.gridu 15s) (+ (/ self.gridr (double 2s)) (/ self.gridl (double 2s))) (var 0s) (var 1808s))
0x0001D4:
    if !(> self.restart 0s) goto 0x0002B0
0x0001E8:
    if !(< self.rstype 99s) goto 0x000258
0x0001FC:
    call (draw_sprite[]:int32 (- self.gridu 15s) (+ (/ self.gridr (double 2s)) (/ self.gridl (double 2s))) (var 0s) (var 1806s))
    goto 0x0002B0
0x000258:
    call (draw_sprite[]:int32 (- self.gridu 15s) (+ (/ self.gridr (double 2s)) (/ self.gridl (double 2s))) (var 0s) (var 1807s))
0x0002B0:
    if !(== self.active 0s) goto 0x00033C
0x0002C4:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_set_alpha[]:int32 (var 0.4d))
    call (draw_rectangle[]:int32 (var 0s) (var 160s) (var 400s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
0x00033C:
    exit
