0x000000:
    if !(> self.shake 0s) goto 0x000084
0x000014:
    self.x = (- (+ self.nowx (random[]:int32 self.shake)) (random[]:int32 self.shake))
    self.y = (- (+ self.nowy (random[]:int32 self.shake)) (random[]:int32 self.shake))
0x000084:
    if !(== self.walking 1s) goto 0x0000B0
0x000098:
    self.nowx = (- self.nowx 1s)
0x0000B0:
    if !(== self.active 1s) goto 0x00011C
0x0000C4:
    self.atimer = (+ self.atimer 1s)
    if !(> self.atimer 5s) goto 0x00011C
0x0000F0:
    if !(< self.trueindex 5s) goto 0x00011C
0x000104:
    self.trueindex = (+ self.trueindex 1s)
0x00011C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.trueindex (var 693s))
0x0001CC:
    exit
