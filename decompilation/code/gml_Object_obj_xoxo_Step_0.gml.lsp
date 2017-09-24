0x000000:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1570s) (- self.bbox_bottom 2s) (+ self.x 10s) (- self.bbox_top 2s) (+ self.x 10s))) goto 0x00007C
0x000068:
    push (== self.touched 0s)
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x000104
0x000084:
    self.touched = 1s
    if !(== self.image_index 1s) goto 0x0000D0
0x0000A4:
    call (snd_play[]:int32 (var 141s))
    self.image_index = 2s
    [obj_xoxocontroller1].fvic = 0s
0x0000D0:
    if !(== self.image_index 0s) goto 0x000104
0x0000E4:
    self.image_index = 1s
    call (snd_play[]:int32 (var 141s))
0x000104:
    if !(< (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1570s) (- self.bbox_bottom 2s) (+ self.x 10s) (- self.bbox_top 2s) (+ self.x 10s)) 0s) goto 0x000184
0x000170:
    push (== self.touched 1s)
    goto 0x000188
0x000184:
    push 0s
0x000188:
    if !pop goto 0x000198
0x00018C:
    self.touched = 0s
0x000198:
    if !(bool (instance_exists[]:int32 (var 976s))) goto 0x0001DC
0x0001B0:
    if !(== self.image_index 1s) goto 0x0001DC
0x0001C4:
    [obj_xoxocontroller1].vic = (+ 976.vic 1s)
0x0001DC:
    exit
