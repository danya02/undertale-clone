0x000000:
    if !(<= self.on 0s) goto 0x000020
0x000014:
    self.image_index = 0s
0x000020:
    if !(> self.on 0s) goto 0x000040
0x000034:
    self.image_index = 1s
0x000040:
    self.on = (- self.on 1s)
    if !(> self.on 0s) goto 0x000098
0x00006C:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000098
0x000084:
    call (event_user[]:int32 (var 0s))
0x000098:
    exit
