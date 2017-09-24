0x000000:
    self.image_angle = self.direction
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y self.sprite_width) (+ self.x self.sprite_width) self.y self.x)) goto 0x00007C
0x000070:
    call (instance_destroy[]:int32 )
0x00007C:
    if !(> self.y self.room_height) goto 0x0000A0
0x000094:
    call (instance_destroy[]:int32 )
0x0000A0:
    exit
