0x000000:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (+ (+ self.size (random[]:int32 (var 0.1d))) 0.4d) (+ (+ self.size 1s) (random[]:int32 (var 0.1d))) (+ self.y (random[]:int32 (var 4s))) (+ self.x (random[]:int32 (var 4s))) self.anim self.sprite_index)
    self.anim = (+ self.anim self.animspeed)
    if !(> self.anim (+ self.animchoice 1s)) goto 0x000120
0x00010C:
    self.animspeed = (- self.animspeed)
0x000120:
    if !(< self.anim (- self.animchoice 1s)) goto 0x000154
0x000140:
    self.animspeed = (- self.animspeed)
0x000154:
    if !(bool (keyboard_check[]:int32 (var 32s))) goto 0x00027C
0x00016C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (+ (+ self.size (random[]:int32 (var 0.1d))) 0.4d) (+ (+ self.size 0.8d) (random[]:int32 (var 0.1d))) (+ self.y (random[]:int32 (var 4s))) (+ self.x (random[]:int32 (var 4s))) (random[]:int32 (var 3s)) (var 2206s))
    self.animchoice = (round[]:int32 (random[]:int32 (var 100s)))
    self.anim = self.animchoice
0x00027C:
    exit
