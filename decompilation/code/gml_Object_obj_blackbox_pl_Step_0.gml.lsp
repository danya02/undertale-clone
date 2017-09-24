0x000000:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)) goto 0x00005C
0x000048:
    call (event_user[]:int32 (var 11s))
0x00005C:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 22s) (+ self.x 22s) (+ self.y 2s) (+ self.x 2s))) goto 0x0001F8
0x0000C4:
    if !(bool (instance_exists[]:int32 (var 402s))) goto 0x0000F4
0x0000DC:
    global.ratings = (+ global.ratings 20s)
0x0000F4:
    self.g = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 22s) (+ self.x 22s) (+ self.y 2s) (+ self.x 2s))
    call (snd_play[]:int32 (var 128s))
    pushenv (int32 self.g) 0x00018C
0x000180:
    call (instance_destroy[]:int32 )
0x00018C:
    popenv 0x000180
0x000190:
    self.bp = (instance_create[]:int32 (var 425s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.bp)) goto 0x0001EC
0x0001D0:
    push self.sprite_index
    stog.sprite_index* = (int32 self.bp)
0x0001EC:
    call (instance_destroy[]:int32 )
0x0001F8:
    self.s = (+ self.s 1s)
    self.x = (+ self.xstart (* (sin[]:int32 (/ self.s self.sp)) self.sf))
0x00024C:
    exit
