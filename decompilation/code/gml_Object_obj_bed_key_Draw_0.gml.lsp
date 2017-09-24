0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    self.anim = (+ self.anim 0.1d)
    push -5s
    if !(< 484s:flag 2s) goto 0x0000D0
0x000068:
    call (draw_sprite_ext[]:int32 (var 1s) (var 65535) (var 0s) (var 1s) (var 1s) (+ self.y 32s) (+ self.x 34s) self.anim (var 2110s))
0x0000D0:
    call (draw_sprite_part[]:int32 (+ (+ self.y 13s) self.bedy) (+ self.x 2s) (- 39s self.bedy) (var 46s) (var 0s) (var 0s) (var 0s) (var 2154s))
    push -5s
    if !(> 484s:flag 0s) goto 0x000194
0x00015C:
    self.bedy = (+ self.bedy 4s)
    if !(>= self.bedy 30s) goto 0x000194
0x000188:
    self.bedy = 30s
0x000194:
    exit
