0x000000:
    call (scr_depth[]:int32 )
    if !(!= global.interact 5s) goto 0x000030
0x000020:
    self.vspeed = 8s
    goto 0x00003C
0x000030:
    self.vspeed = 0s
0x00003C:
    if !(> self.y self.topy) goto 0x0000A0
0x000054:
    if !(== self.speeded 0s) goto 0x000080
0x000068:
    self.phase = 0s
    self.speeded = 1s
0x000080:
    if !(!= global.interact 5s) goto 0x0000A0
0x000094:
    self.vspeed = 4s
0x0000A0:
    if !(== self.active 1s) goto 0x0000C8
0x0000B4:
    push (!= global.interact 5s)
    goto 0x0000CC
0x0000C8:
    push 0s
0x0000CC:
    if !pop goto 0x00022C
0x0000D0:
    if !(bool (instance_exists[]:int32 (var 1136s))) goto 0x00022C
0x0000E8:
    if !(== 1136.colliding 0s) goto 0x00022C
0x0000FC:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1570s) (+ (+ self.bbox_bottom self.vspeed) 1s) self.bbox_right (+ self.bbox_bottom 1s) self.bbox_left)) goto 0x00022C
0x000160:
    [obj_mainchara].y = (+ 1570.y self.vspeed)
    if !(== 1569.up 1s) goto 0x0001A8
0x000190:
    [obj_mainchara].y = (+ 1570.y 3s)
0x0001A8:
    if !(== 1569.down 1s) goto 0x0001D0
0x0001BC:
    push (> self.vspeed 3s)
    goto 0x0001D4
0x0001D0:
    push 0s
0x0001D4:
    if !pop goto 0x0001F0
0x0001D8:
    [obj_mainchara].y = (- 1570.y 3s)
0x0001F0:
    [obj_mainchara].x = (round[]:int32 1570.x)
    [obj_mainchara].y = (round[]:int32 1570.y)
    [obj_waterpushrockgen].colliding = 1s
0x00022C:
    if !(> self.y self.bottomy) goto 0x0002A8
0x000244:
    self.d = (instance_create[]:int32 (var 1138s) self.y self.x)
    if !(== self.room 91s) goto 0x00029C
0x000280:
    push 2s
    push (int32 self.d)
    stog.alarm[] = 0s
0x00029C:
    call (instance_destroy[]:int32 )
0x0002A8:
    if !(> self.y 350s) goto 0x0002C8
0x0002BC:
    call (instance_destroy[]:int32 )
0x0002C8:
    exit
