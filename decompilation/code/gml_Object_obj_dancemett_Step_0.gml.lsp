0x000000:
    push self.y
    if !(> -5s (- 2s:idealborder 80s)) goto 0x00003C
0x000028:
    push (== self.flash 0s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x00005C
0x000044:
    self.sprite_index = 525s
    self.flash = 1s
0x00005C:
    if !(== self.flash 1s) goto 0x0000C8
0x000070:
    self.timer = (+ self.timer self.vspeed)
    self.image_speed = (/ self.timer (double 60s))
    if !(> self.timer 60s) goto 0x0000C8
0x0000BC:
    self.flash = 2s
0x0000C8:
    if !(== self.flash 2s) goto 0x000114
0x0000DC:
    self.image_index = 0s
    self.sprite_index = 524s
    self.flash = 3s
    self.image_speed = 0.5d
0x000114:
    if !(== self.flash 3s) goto 0x000148
0x000128:
    if !(== self.image_index 2s) goto 0x000148
0x00013C:
    self.flash = 4s
0x000148:
    if !(== self.flash 4s) goto 0x0002F8
0x00015C:
    self.i = 0s
    if (<= 2s 0) goto 0x0002E8
0x000180:
    push 2s
    self.lt = (instance_create[]:int32 (var 434s) (+ self.y 10s) (+ self.x 10s))
    push 1s
    stog.speed* = (int32 self.lt)
    push 523s
    stog.sprite_index* = (int32 self.lt)
    push (* self.i 180s)
    stog.direction* = (int32 self.lt)
    push -1s
    stog.vspeed* = (int32 self.lt)
    push (+ 0.1d (random[]:int32 (var 0.05d)))
    stog.gravity* = (int32 self.lt)
    stog.hspeed* = (+ (int32 self.lt):hspeed (- (+ self.hspeed (random[]:int32 (var 0.5d))) 0.25d))
    self.i = (+ self.i 1s)
    if (bool (- (int32 self.lt) 1)) goto 0x000180
0x0002E8:
    push (- (int32 self.lt) 1)
    pop
    self.flash = 5s
0x0002F8:
    if !(== self.flash 5s) goto 0x00032C
0x00030C:
    if !(== self.image_index 6s) goto 0x00032C
0x000320:
    self.flash = 6s
0x00032C:
    if !(== self.flash 6s) goto 0x00050C
0x000340:
    if (<= 1s 0) goto 0x0004FC
0x000358:
    push 1s
    self.lt = (instance_create[]:int32 (var 434s) (+ self.y 10s) (+ self.x 10s))
    push 2s
    stog.speed* = (int32 self.lt)
    push 523s
    stog.sprite_index* = (int32 self.lt)
    push (+ (* self.i 180s) 90s)
    stog.direction* = (int32 self.lt)
    push (- (+ -1.5d (random[]:int32 (var 0.5d))) 0.25d)
    stog.vspeed* = (int32 self.lt)
    push (+ 0.1d (random[]:int32 (var 0.05d)))
    stog.gravity* = (int32 self.lt)
    stog.hspeed* = (+ (int32 self.lt):hspeed (- (+ self.hspeed (random[]:int32 (var 0.5d))) 0.25d))
    self.i = (+ self.i 1s)
    if (bool (- (int32 self.lt) 1)) goto 0x000358
0x0004FC:
    push (- (int32 self.lt) 1)
    pop
    self.flash = 9s
0x00050C:
    if !(== self.flash 9s) goto 0x000540
0x000520:
    self.flash = 10s
    stog.alarm[4s] = 40s
0x000540:
    if !(> self.y self.room_height) goto 0x000564
0x000558:
    call (instance_destroy[]:int32 )
0x000564:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 22s) (+ self.x 22s) (+ self.y 2s) (+ self.x 2s))) goto 0x0006F4
0x0005CC:
    self.g = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) (+ self.y 22s) (+ self.x 22s) (+ self.y 2s) (+ self.x 2s))
    pushenv (int32 self.g) 0x000650
0x000644:
    call (instance_destroy[]:int32 )
0x000650:
    popenv 0x000644
0x000654:
    self.bp = (instance_create[]:int32 (var 425s) (- self.y 6s) (- self.x 15s))
    push self.sprite_index
    stog.sprite_index* = (int32 self.bp)
    push self.image_index
    stog.image_index* = (int32 self.bp)
    push (+ self.depth 1s)
    stog.depth* = (int32 self.bp)
    call (instance_destroy[]:int32 )
0x0006F4:
    self.siner = (+ self.siner 1s)
    self.x = (+ self.xstart (* (sin[]:int32 (/ self.siner (double 6s))) 10s))
0x000744:
    exit
