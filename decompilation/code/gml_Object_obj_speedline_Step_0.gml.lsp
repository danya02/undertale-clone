0x000000:
    if !(> self.y self.room_height) goto 0x000024
0x000018:
    call (instance_destroy[]:int32 )
0x000024:
    exit
