0x000000:
    if !(> self.vspeed 0s) goto 0x000020
0x000014:
    self.depth = -13s
0x000020:
    self.visible = 1s
    if !(> self.y self.room_height) goto 0x000050
0x000044:
    call (instance_destroy[]:int32 )
0x000050:
    exit
