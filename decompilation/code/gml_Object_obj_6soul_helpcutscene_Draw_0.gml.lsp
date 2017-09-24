0x000000:
    self.siner = (+ self.siner 2s)
    self.counter = (+ self.counter 1s)
    self.i = 0s
    if !(< self.i 6s) goto 0x000110
0x000050:
    call (draw_sprite[]:int32 (+ self.y (lengthdir_y[]:int32 (+ self.siner (* (/ self.i (double 6s)) 360s)) self.radius)) (+ self.x (lengthdir_x[]:int32 (+ self.siner (* (/ self.i (double 6s)) 360s)) self.radius)) self.i self.sprite_index)
    self.i = (+ self.i 1s)
    goto 0x00003C
0x000110:
    if !(> self.counter 60s) goto 0x000138
0x000124:
    push (< self.counter 90s)
    goto 0x00013C
0x000138:
    push 0s
0x00013C:
    if !pop goto 0x000160
0x000140:
    self.radius = (+ self.radius 0.6d)
0x000160:
    if !(== self.counter 120s) goto 0x000180
0x000174:
    self.vspeed = 2s
0x000180:
    if !(> self.counter 120s) goto 0x0001A8
0x000194:
    push (< self.counter 235s)
    goto 0x0001AC
0x0001A8:
    push 0s
0x0001AC:
    if !pop goto 0x0001C8
0x0001B0:
    self.radius = (+ self.radius 1s)
0x0001C8:
    if !(== self.counter 235s) goto 0x0001F4
0x0001DC:
    self.vspeed = 0s
    self.times = 0s
0x0001F4:
    if !(== self.counter 285s) goto 0x00056C
0x000208:
    self.i = 0s
    if !(< self.i 6s) goto 0x000554
0x000228:
    self.heal = (instance_create[]:int32 (var 1606s) (+ self.y (lengthdir_y[]:int32 (+ self.siner (* (/ self.i (double 6s)) 360s)) self.radius)) (+ self.x (lengthdir_x[]:int32 (+ self.siner (* (/ self.i (double 6s)) 360s)) self.radius)))
    pushenv (int32 self.heal) 0x00030C
0x0002D8:
    call (move_towards_point[]:int32 (var 3s) (+ 1581.y 8s) (+ 1581.x 8s))
0x00030C:
    popenv 0x0002D8
0x000310:
    if !(== self.i 0s) goto 0x00036C
0x000324:
    push 2231s
    stog.sprite_index* = (int32 self.heal)
    push 1s
    stog.image_xscale* = (int32 self.heal)
    push 1s
    stog.image_yscale* = (int32 self.heal)
0x00036C:
    if !(== self.i 1s) goto 0x0003C8
0x000380:
    push 2209s
    stog.sprite_index* = (int32 self.heal)
    push 2s
    stog.image_xscale* = (int32 self.heal)
    push 2s
    stog.image_yscale* = (int32 self.heal)
0x0003C8:
    if !(== self.i 2s) goto 0x000424
0x0003DC:
    push 2219s
    stog.sprite_index* = (int32 self.heal)
    push 2s
    stog.image_xscale* = (int32 self.heal)
    push 2s
    stog.image_yscale* = (int32 self.heal)
0x000424:
    if !(== self.i 3s) goto 0x000480
0x000438:
    push 2210s
    stog.sprite_index* = (int32 self.heal)
    push 2s
    stog.image_xscale* = (int32 self.heal)
    push 2s
    stog.image_yscale* = (int32 self.heal)
0x000480:
    if !(== self.i 4s) goto 0x0004DC
0x000494:
    push 2222s
    stog.sprite_index* = (int32 self.heal)
    push 2s
    stog.image_xscale* = (int32 self.heal)
    push 2s
    stog.image_yscale* = (int32 self.heal)
0x0004DC:
    if !(== self.i 5s) goto 0x000538
0x0004F0:
    push 2214s
    stog.sprite_index* = (int32 self.heal)
    push 2s
    stog.image_xscale* = (int32 self.heal)
    push 2s
    stog.image_yscale* = (int32 self.heal)
0x000538:
    self.i = (+ self.i 1s)
    goto 0x000214
0x000554:
    self.times = (+ self.times 1s)
0x00056C:
    if !(== self.counter 325s) goto 0x0005A0
0x000580:
    if !(< self.times 5s) goto 0x0005A0
0x000594:
    self.counter = 283s
0x0005A0:
    if !(> self.counter 360s) goto 0x0005CC
0x0005B4:
    self.radius = (+ self.radius 4s)
0x0005CC:
    if !(> self.counter 460s) goto 0x0005EC
0x0005E0:
    call (instance_destroy[]:int32 )
0x0005EC:
    exit
