0x000000:
    push -1s
    self.y = (- 0s:view_yview self.sprite_width)
    self.on = 1s
    self.amt = 0s
    self.siner = 0s
    self.reverse = 0s
    if !(bool (instance_exists[]:int32 (instance_find[]:int32 (var 1s) self.object_index))) goto 0x00008C
0x00007C:
    self.reverse = 1s
    goto 0x0000D4
0x00008C:
    push self.object_index
    push -1s
    call (instance_create[]:int32 (- 0s:view_yview self.sprite_width) -1s (+ 0s:view_xview 240s))
0x0000D4:
    self.image_speed = 0.334d
0x0000E8:
    exit
