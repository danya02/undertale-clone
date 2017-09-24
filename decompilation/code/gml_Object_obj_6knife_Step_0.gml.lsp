0x000000:
    if (== self.type 0s) goto 0x000028
0x000014:
    push (== self.type 2s)
    goto 0x00002C
0x000028:
    push 1s
0x00002C:
    if !pop goto 0x0002C8
0x000030:
    if !(bool (instance_exists[]:int32 (var 1626s))) goto 0x00009C
0x000048:
    self.x = (+ self.relx 1626.x)
    self.y = (+ self.rely 1626.y)
    self.image_angle = (+ 1626.image_angle self.inita)
0x00009C:
    if !(> self.y (+ self.room_height 60s)) goto 0x000104
0x0000BC:
    self.y = (- self.y (* self.sprite_width 6s))
    self.rely = (- self.rely (* self.sprite_width 6s))
0x000104:
    if !(< self.y -60s) goto 0x000160
0x000118:
    self.y = (+ self.y (* self.sprite_width 6s))
    self.rely = (+ self.rely (* self.sprite_width 6s))
0x000160:
    if !(> self.x (+ self.room_width 60s)) goto 0x0001C8
0x000180:
    self.x = (- self.x (* self.sprite_width 7s))
    self.relx = (- self.relx (* self.sprite_width 7s))
0x0001C8:
    if !(< self.x -60s) goto 0x000224
0x0001DC:
    self.x = (+ self.x (* self.sprite_width 7s))
    self.relx = (+ self.relx (* self.sprite_width 7s))
0x000224:
    if !(== self.type 2s) goto 0x0002C8
0x000238:
    self.shake = (+ self.shake 0.2d)
    self.x = (+ self.x (- (random[]:int32 self.shake) (random[]:int32 self.shake)))
    self.y = (+ self.y (- (random[]:int32 self.shake) (random[]:int32 self.shake)))
0x0002C8:
    if !(== self.type 1s) goto 0x0003E4
0x0002DC:
    self.dd = (distance_to_object[]:int32 (var 1581s))
    call (move_towards_point[]:int32 (var 1s) (+ 1581.y 8s) (+ 1581.x 8s))
    if !(< self.dd 240s) goto 0x000348
0x00033C:
    self.speed = 2s
0x000348:
    if !(< self.dd 180s) goto 0x000368
0x00035C:
    self.speed = 3s
0x000368:
    if !(< self.dd 120s) goto 0x000388
0x00037C:
    self.speed = 4s
0x000388:
    if !(< self.dd 60s) goto 0x0003A8
0x00039C:
    self.speed = 5s
0x0003A8:
    if !(< self.dd 30s) goto 0x0003C8
0x0003BC:
    self.speed = 6s
0x0003C8:
    self.image_angle = (+ self.image_angle self.speed)
0x0003E4:
    exit
