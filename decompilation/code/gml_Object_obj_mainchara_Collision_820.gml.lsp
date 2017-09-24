0x000000:
    if !(== global.phasing 0s) goto 0x000028
0x000014:
    push (== other.phase 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000410
0x000030:
    self.x = self.xprevious
    self.y = self.yprevious
    if !(== global.interact 0s) goto 0x000404
0x000064:
    if !(== 1569.up 1s) goto 0x000234
0x000078:
    if !(> (collision_rectangle[]:int32 (var 1s) (var 0s) (var 820s) (+ self.y 19s) (+ self.x 18s) (+ self.y 15s) (+ self.x 2s)) 0s) goto 0x000210
0x0000E4:
    if !(== 1569.left 1s) goto 0x00014C
0x0000F8:
    push (< (collision_line[]:int32 (var 1s) (var 0s) (var 820s) self.bbox_top self.bbox_left self.bbox_top (- self.bbox_left 3s)) 0s)
    goto 0x000150
0x00014C:
    push 0s
0x000150:
    if !pop goto 0x000178
0x000154:
    self.x = (- self.x 3s)
    global.facing = 3s
0x000178:
    if !(== 1569.right 1s) goto 0x0001E0
0x00018C:
    push (< (collision_line[]:int32 (var 1s) (var 0s) (var 820s) self.bbox_top self.bbox_right self.bbox_top (+ self.bbox_right 3s)) 0s)
    goto 0x0001E4
0x0001E0:
    push 0s
0x0001E4:
    if !pop goto 0x00020C
0x0001E8:
    self.x = (+ self.x 3s)
    global.facing = 1s
0x00020C:
    goto 0x000234
0x000210:
    self.y = (- self.y 3s)
    global.facing = 2s
0x000234:
    if !(== 1569.down 1s) goto 0x000404
0x000248:
    if !(> (collision_rectangle[]:int32 (var 1s) (var 0s) (var 820s) (+ self.y 33s) (+ self.x 18s) (+ self.y 30s) (+ self.x 2s)) 0s) goto 0x0003E0
0x0002B4:
    if !(== 1569.left 1s) goto 0x00031C
0x0002C8:
    push (< (collision_line[]:int32 (var 1s) (var 0s) (var 820s) self.bbox_bottom self.bbox_left self.bbox_bottom (- self.bbox_left 3s)) 0s)
    goto 0x000320
0x00031C:
    push 0s
0x000320:
    if !pop goto 0x000348
0x000324:
    self.x = (- self.x 3s)
    global.facing = 3s
0x000348:
    if !(== 1569.right 1s) goto 0x0003B0
0x00035C:
    push (< (collision_line[]:int32 (var 1s) (var 0s) (var 820s) self.bbox_bottom self.bbox_right self.bbox_bottom (+ self.bbox_right 3s)) 0s)
    goto 0x0003B4
0x0003B0:
    push 0s
0x0003B4:
    if !pop goto 0x0003DC
0x0003B8:
    self.x = (+ self.x 3s)
    global.facing = 1s
0x0003DC:
    goto 0x000404
0x0003E0:
    self.y = (+ self.y 3s)
    global.facing = 0s
0x000404:
    self.moving = 0s
0x000410:
    exit
