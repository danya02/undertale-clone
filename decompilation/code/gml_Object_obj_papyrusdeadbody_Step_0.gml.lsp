0x000000:
    if !(== self.c 4s) goto 0x0000C4
0x000014:
    self.ddd = (instance_create[]:int32 (var 155s) self.y self.x)
    pushenv (int32 self.ddd) 0x000060
0x00004C:
    call (scr_newvapordata[]:int32 (var 9s))
0x000060:
    popenv 0x00004C
0x000064:
    push self.sprite_index
    stog.sprite_index* = (int32 self.ddd)
    push self.sprite_height
    stog.ht* = (int32 self.ddd)
    push self.sprite_width
    stog.wd* = (int32 self.ddd)
    call (instance_destroy[]:int32 )
0x0000C4:
    exit
