0x000000:
    push self.y
    if !(> -5s (- (- 2s:idealborder self.early) 15s)) goto 0x000048
0x000034:
    push (== self.flash 0s)
    goto 0x00004C
0x000048:
    push 0s
0x00004C:
    if !pop goto 0x000070
0x000050:
    self.flash = 1s
    stog.alarm[4s] = 20s
0x000070:
    if !(== self.flash 1s) goto 0x000098
0x000084:
    push (<= self.early 20s)
    goto 0x00009C
0x000098:
    push 0s
0x00009C:
    if !pop goto 0x0000DC
0x0000A0:
    if !(> self.vspeed 1.5d) goto 0x0000DC
0x0000BC:
    self.vspeed = (- self.vspeed 0.15d)
0x0000DC:
    if !(> self.early 20s) goto 0x000120
0x0000F0:
    push self.y
    push (> -5s (- (- 2s:idealborder 20s) 15s))
    goto 0x000124
0x000120:
    push 0s
0x000124:
    if !pop goto 0x000164
0x000128:
    if !(> self.vspeed 1.5d) goto 0x000164
0x000144:
    self.vspeed = (- self.vspeed 0.15d)
0x000164:
    if !(== self.flash 2s) goto 0x000198
0x000178:
    self.flash = 3s
    stog.alarm[4s] = 30s
0x000198:
    if !(== self.flash 3s) goto 0x0001DC
0x0001AC:
    push -1s
    if !(< 4s:alarm 26s) goto 0x0001DC
0x0001C8:
    self.image_speed = 0.5d
0x0001DC:
    if !(== self.flash 4s) goto 0x0002B0
0x0001F0:
    self.lt = (instance_create[]:int32 (var 434s) (+ self.y 10s) (+ self.x 10s))
    push 5s
    stog.speed* = (int32 self.lt)
    push (point_direction[]:int32 (+ 743.y 10s) (+ 743.x 10s) (int32 self.lt):y (int32 self.lt):x)
    stog.direction* = (int32 self.lt)
    self.flash = 5s
0x0002B0:
    if !(== self.flash 5s) goto 0x0003B4
0x0002C4:
    self.flash = 1s
    stog.alarm[4s] = 30s
    if !(== self.type 2s) goto 0x0003B4
0x0002F8:
    self.flash = 9s
    if !(< self.x (/ self.room_width (double 2s))) goto 0x00035C
0x000328:
    self.gravity_direction = 180s
    self.gravity = 0.5d
    self.friction = 0.2d
0x00035C:
    if !(> self.x (/ self.room_width (double 2s))) goto 0x0003B4
0x000380:
    self.gravity_direction = 0s
    self.gravity = 0.5d
    self.friction = 0.2d
0x0003B4:
    if !(> self.y self.room_height) goto 0x0003D8
0x0003CC:
    call (instance_destroy[]:int32 )
0x0003D8:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 22s) (+ self.x 22s) (+ self.y 2s) (+ self.x 2s))) goto 0x0005AC
0x000440:
    self.g = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 22s) (+ self.x 22s) (+ self.y 2s) (+ self.x 2s))
    pushenv (int32 self.g) 0x0004C4
0x0004B8:
    call (instance_destroy[]:int32 )
0x0004C4:
    popenv 0x0004B8
0x0004C8:
    call (snd_play[]:int32 (var 128s))
    if !(bool (instance_exists[]:int32 (var 402s))) goto 0x00050C
0x0004F4:
    global.ratings = (+ global.ratings 20s)
0x00050C:
    self.bp = (instance_create[]:int32 (var 425s) (- self.y 23s) (- self.x 20s))
    push self.sprite_index
    stog.sprite_index* = (int32 self.bp)
    push self.image_index
    stog.image_index* = (int32 self.bp)
    push (+ self.depth 1s)
    stog.depth* = (int32 self.bp)
    call (instance_destroy[]:int32 )
0x0005AC:
    if !(> self.image_index 16s) goto 0x0005D4
0x0005C0:
    push (> self.image_speed 0s)
    goto 0x0005D8
0x0005D4:
    push 0s
0x0005D8:
    if !pop goto 0x0005F4
0x0005DC:
    self.image_index = 0s
    self.image_speed = 0s
0x0005F4:
    exit
