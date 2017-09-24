0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x00005C
0x000044:
    self.x = (+ self.x 4s)
0x00005C:
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x00008C
0x000074:
    self.y = (- self.y 4s)
0x00008C:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x0000BC
0x0000A4:
    self.y = (+ self.y 4s)
0x0000BC:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x0000EC
0x0000D4:
    self.x = (- self.x 4s)
0x0000EC:
    if !(> self.x 624s) goto 0x00010C
0x000100:
    self.x = 624s
0x00010C:
    if !(< self.x 0s) goto 0x00012C
0x000120:
    self.x = 0s
0x00012C:
    if !(> self.y 464s) goto 0x00014C
0x000140:
    self.y = 464s
0x00014C:
    if !(< self.y 0s) goto 0x00016C
0x000160:
    self.y = 0s
0x00016C:
    exit
