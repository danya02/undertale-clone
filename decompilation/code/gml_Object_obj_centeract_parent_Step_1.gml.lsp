0x000000:
    if !(== self.image_index 1s) goto 0x000040
0x000014:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000040
0x00002C:
    call (event_user[]:int32 (var 4s))
0x000040:
    self.image_index = 0s
0x00004C:
    exit
