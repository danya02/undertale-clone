0x000000:
    push -1s
    self.sprite_index = (int32 global.faceemotion):u
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x00007C
0x000038:
    if !(!= 782.halt 0s) goto 0x000068
0x00004C:
    self.image_speed = 0s
    self.image_index = 0s
    goto 0x00007C
0x000068:
    self.image_speed = 0.25d
0x00007C:
    if !(== global.facechoice 0s) goto 0x00009C
0x000090:
    call (instance_destroy[]:int32 )
0x00009C:
    exit
