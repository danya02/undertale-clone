0x000000:
    if !(== self.room 5s) goto 0x000034
0x000014:
    if !(!= global.plot 0s) goto 0x000034
0x000028:
    call (instance_destroy[]:int32 )
0x000034:
    if !(bool (instance_exists[]:int32 (var 769s))) goto 0x00005C
0x00004C:
    self.image_index = 769.image_index
0x00005C:
    if !(== self.sprite_index 1100s) goto 0x000084
0x000070:
    push (== self.image_index 5s)
    goto 0x000088
0x000084:
    push 0s
0x000088:
    if !pop goto 0x000098
0x00008C:
    call (instance_destroy[]:int32 )
0x000098:
    exit
