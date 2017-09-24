0x000000:
    if !(bool (instance_exists[]:int32 (var 1017s))) goto 0x000160
0x000018:
    if !(< (distance_to_object[]:int32 (var 1017s)) 8s) goto 0x0000A4
0x000034:
    if !(< 1017.bbox_bottom self.bbox_top) goto 0x00006C
0x00004C:
    [obj_rollsnow].y = (+ 1017.y 0.2d)
0x00006C:
    if !(> 1017.bbox_top self.bbox_bottom) goto 0x0000A4
0x000084:
    [obj_rollsnow].y = (- 1017.y 0.2d)
0x0000A4:
    if !(< (distance_to_object[]:int32 (var 1017s)) 8s) goto 0x000160
0x0000C0:
    if !(< 1017.x (+ self.x (/ self.sprite_width (double 2s)))) goto 0x000110
0x0000F0:
    [obj_rollsnow].x = (+ 1017.x 0.2d)
0x000110:
    if !(> 1017.x (+ self.x (/ self.sprite_width (double 2s)))) goto 0x000160
0x000140:
    [obj_rollsnow].x = (- 1017.x 0.2d)
0x000160:
    exit
