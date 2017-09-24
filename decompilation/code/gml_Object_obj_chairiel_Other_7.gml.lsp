0x000000:
    if !(== self.sprite_index 1120s) goto 0x00011C
0x000014:
    self.image_index = 0s
    self.image_speed = 0s
    self.sprite_index = 1121s
    call (instance_create[]:int32 (var 861s) (+ self.y 3s) (+ self.x 28s))
    pushenv 861s 0x000080
0x000074:
    self.facing = 1s
0x000080:
    popenv 0x000074
0x000084:
    pushenv 861s 0x0000B8
0x00008C:
    call (path_start[]:int32 (var 0s) (var 0s) (var 5s) (var 23s))
0x0000B8:
    popenv 0x00008C
0x0000BC:
    global.plot = 21s
    pushenv 1570s 0x0000DC
0x0000D0:
    self.uncan = 0s
0x0000DC:
    popenv 0x0000D0
0x0000E0:
    global.interact = 0s
    call (instance_create[]:int32 (var 869s) self.y self.x)
    call (instance_destroy[]:int32 )
0x00011C:
    exit
