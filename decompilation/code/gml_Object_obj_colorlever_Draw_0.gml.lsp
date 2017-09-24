0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    self.anim = (+ self.anim 1s)
    if !(== self.type 0s) goto 0x00010C
0x000058:
    if !(== self.red 0s) goto 0x0000A8
0x00006C:
    call (draw_sprite[]:int32 (+ self.y 16s) (+ self.x 6s) (var 0s) (var 2111s))
0x0000A8:
    if !(== self.red 1s) goto 0x00010C
0x0000BC:
    call (draw_sprite[]:int32 (+ self.y 16s) (+ self.x 6s) (floor[]:int32 (/ self.anim (double 4s))) (var 2115s))
0x00010C:
    if !(== self.type 1s) goto 0x0001D4
0x000120:
    if !(== self.blu 0s) goto 0x000170
0x000134:
    call (draw_sprite[]:int32 (+ self.y 16s) (+ self.x 6s) (var 0s) (var 2113s))
0x000170:
    if !(== self.blu 1s) goto 0x0001D4
0x000184:
    call (draw_sprite[]:int32 (+ self.y 16s) (+ self.x 6s) (floor[]:int32 (/ self.anim (double 4s))) (var 2116s))
0x0001D4:
    if !(== self.type 2s) goto 0x00029C
0x0001E8:
    if !(== self.gre 0s) goto 0x000238
0x0001FC:
    call (draw_sprite[]:int32 (+ self.y 16s) (+ self.x 6s) (var 0s) (var 2112s))
0x000238:
    if !(== self.gre 1s) goto 0x00029C
0x00024C:
    call (draw_sprite[]:int32 (+ self.y 16s) (+ self.x 6s) (floor[]:int32 (/ self.anim (double 4s))) (var 2117s))
0x00029C:
    if !(== self.type 3s) goto 0x000364
0x0002B0:
    if !(== self.yel 0s) goto 0x000300
0x0002C4:
    call (draw_sprite[]:int32 (+ self.y 16s) (+ self.x 6s) (var 0s) (var 2114s))
0x000300:
    if !(== self.yel 1s) goto 0x000364
0x000314:
    call (draw_sprite[]:int32 (+ self.y 16s) (+ self.x 6s) (floor[]:int32 (/ self.anim (double 4s))) (var 2118s))
0x000364:
    exit
