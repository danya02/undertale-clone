0x000000:
    self.image_speed = 0.5d
    self.image_blend = 16777215
    self.con = 3s
    stog.alarm[4s] = 20s
    self.image_speed = 0s
    self.speed = 0s
    self.dir = (random[]:int32 (var 360s))
    if !(== self.big 0s) goto 0x0002E0
0x000088:
    if !(== self.h_mode 0s) goto 0x0001B4
0x00009C:
    self.i = 0s
    if !(< self.i 7s) goto 0x000194
0x0000BC:
    self.star = (instance_create[]:int32 (var 579s) self.y self.x)
    push self.h_mode
    stog.h_mode* = (int32 self.star)
    push -0.2d
    stog.friction* = (int32 self.star)
    push 1.4d
    stog.speed* = (int32 self.star)
    push (+ self.dir (* 51.4285714285714d self.i))
    stog.direction* = (int32 self.star)
    self.i = (+ self.i 1s)
    goto 0x0000A8
0x000194:
    pushenv 580s 0x0001B0
0x00019C:
    call (event_user[]:int32 (var 1s))
0x0001B0:
    popenv 0x00019C
0x0001B4:
    if !(== self.h_mode 1s) goto 0x0002E0
0x0001C8:
    self.i = 0s
    if !(< self.i 7s) goto 0x0002C0
0x0001E8:
    self.star = (instance_create[]:int32 (var 579s) self.y self.x)
    push self.h_mode
    stog.h_mode* = (int32 self.star)
    push -0.25d
    stog.friction* = (int32 self.star)
    push 1.5d
    stog.speed* = (int32 self.star)
    push (+ self.dir (* 51.4285714285714d self.i))
    stog.direction* = (int32 self.star)
    self.i = (+ self.i 1s)
    goto 0x0001D4
0x0002C0:
    pushenv 580s 0x0002DC
0x0002C8:
    call (event_user[]:int32 (var 1s))
0x0002DC:
    popenv 0x0002C8
0x0002E0:
    if !(== self.big 1s) goto 0x00060C
0x0002F4:
    pushenv 580s 0x000310
0x0002FC:
    call (event_user[]:int32 (var 2s))
0x000310:
    popenv 0x0002FC
0x000314:
    self.i = 0s
    if !(< self.i 20s) goto 0x00040C
0x000334:
    self.star = (instance_create[]:int32 (var 579s) self.y self.x)
    push -0.3d
    stog.friction* = (int32 self.star)
    push 1.6d
    stog.speed* = (int32 self.star)
    push (+ self.dir (* 22.5d self.i))
    stog.direction* = (int32 self.star)
    push self.h_mode
    stog.h_mode* = (int32 self.star)
    self.i = (+ self.i 1s)
    goto 0x000320
0x00040C:
    self.dir = (+ self.dir 9s)
    self.i = 0s
    if !(< self.i 20s) goto 0x00051C
0x000444:
    self.star = (instance_create[]:int32 (var 579s) self.y self.x)
    push -0.24d
    stog.friction* = (int32 self.star)
    push 0.8d
    stog.speed* = (int32 self.star)
    push (+ self.dir (* 22.5d self.i))
    stog.direction* = (int32 self.star)
    push self.h_mode
    stog.h_mode* = (int32 self.star)
    self.i = (+ self.i 1s)
    goto 0x000430
0x00051C:
    self.i = 0s
    if !(< self.i 20s) goto 0x00060C
0x00053C:
    self.star = (instance_create[]:int32 (var 579s) self.y self.x)
    push -0.18d
    stog.friction* = (int32 self.star)
    push 0.2d
    stog.speed* = (int32 self.star)
    push (+ self.dir (* 18s self.i))
    stog.direction* = (int32 self.star)
    push self.h_mode
    stog.h_mode* = (int32 self.star)
    self.i = (+ self.i 1s)
    goto 0x000528
0x00060C:
    self.ex = (instance_create[]:int32 (var 578s) self.y self.x)
    push self.sprite_index
    stog.sprite_index* = (int32 self.ex)
    push self.image_index
    stog.image_index* = (int32 self.ex)
    push self.image_blend
    stog.image_blend* = (int32 self.ex)
    push self.image_speed
    stog.image_speed* = (int32 self.ex)
    push self.aa
    stog.aa* = (int32 self.ex)
    push self.big
    stog.big* = (int32 self.ex)
    push self.depth
    stog.depth* = (int32 self.ex)
    push self.image_alpha
    stog.image_alpha* = (int32 self.ex)
    push self.image_angle
    stog.image_angle* = (int32 self.ex)
    call (instance_destroy[]:int32 )
0x00073C:
    exit
