0x000000:
    if !(== self.con 1s) goto 0x0000B4
0x000014:
    self.image_speed = 0.25d
    self.x = (+ self.x (- (random[]:int32 (var 2s)) 1s))
    self.y = (+ self.y (- (random[]:int32 (var 2s)) 1s))
    call (move_towards_point[]:int32 (var 2s) (- 1147.y 5s) (- 1147.x 4s))
0x0000B4:
    if !(== self.con 1s) goto 0x000154
0x0000C8:
    if !(> self.hspeed 0s) goto 0x0000EC
0x0000DC:
    self.sprite_index = 1525s
    goto 0x0000F8
0x0000EC:
    self.sprite_index = 1520s
0x0000F8:
    if !(< (abs[]:int32 (distance_to_point[]:int32 (- 1147.y 5s) (- 1147.x 4s))) 2s) goto 0x000154
0x000134:
    self.con = 2s
    stog.alarm[4s] = 30s
0x000154:
    if (== self.con 2s) goto 0x000190
0x000168:
    if (== self.con 3s) goto 0x000190
0x00017C:
    push (== self.con 4s)
    goto 0x000194
0x000190:
    push 1s
0x000194:
    if !pop goto 0x00024C
0x000198:
    self.image_speed = 0.25d
    self.x = (- 1147.x 4s)
    self.y = (- 1147.y 5s)
    self.x = (+ self.x (- (random[]:int32 (var 1s)) 0.5d))
    self.y = (+ self.y (- (random[]:int32 (var 1.2d)) 0.5d))
0x00024C:
    if !(== self.con 4s) goto 0x00027C
0x000260:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000280
0x00027C:
    push 0s
0x000280:
    if !pop goto 0x0002A4
0x000284:
    self.con = 5s
    stog.alarm[4s] = 90s
0x0002A4:
    if !(== self.con 5s) goto 0x000374
0x0002B8:
    call (move_towards_point[]:int32 (var 2s) (+ self.y 100s) (+ self.x 400s))
    self.x = (+ self.x (- 1s (random[]:int32 (var 2s))))
    self.y = (+ self.y (- 1s (random[]:int32 (var 2s))))
    if !(> self.hspeed 0s) goto 0x000368
0x000358:
    self.sprite_index = 1525s
    goto 0x000374
0x000368:
    self.sprite_index = 1520s
0x000374:
    if !(== self.con 6s) goto 0x0003A0
0x000388:
    [obj_rarependant].con = 5s
    self.con = 7s
0x0003A0:
    if !(== self.con 3s) goto 0x000438
0x0003B4:
    pushenv 1147s 0x0003C8
0x0003BC:
    self.image_index = 1s
0x0003C8:
    popenv 0x0003BC
0x0003CC:
    global.typer = 5s
    global.facechoice = 0s
    global.msc = 0s
    stog.msg[0s] = "* (The dog absorbs the&  artifact.)/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 4s
0x000438:
    exit
