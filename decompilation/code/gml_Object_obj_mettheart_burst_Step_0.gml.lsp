0x000000:
    self.image_xscale = self.size
    self.image_yscale = self.size
    self.timer = (+ self.timer 1s)
    [obj_mettb_body].hurt = 2s
    [obj_mettb_body].dsf = 2s
    if !(== self.timer 0s) goto 0x00009C
0x000064:
    self.shake = 5s
    self.speed = 0s
    self.x = self.homex
    self.y = self.homey
0x00009C:
    if !(>= self.timer 0s) goto 0x0000C4
0x0000B0:
    push (< self.timer 4s)
    goto 0x0000C8
0x0000C4:
    push 0s
0x0000C8:
    if !pop goto 0x000118
0x0000CC:
    self.shake = (- self.shake 1s)
    self.image_speed = 0.5d
    self.size = (- self.size 0.2d)
0x000118:
    if !(== self.timer 7s) goto 0x00027C
0x00012C:
    call (caster_play[]:int32 (var 1s) (var 1s) (var 326s))
    self.shake = 0s
    self.i = 0s
    if !(< self.i 12s) goto 0x00027C
0x00017C:
    self.g = (instance_create[]:int32 (var 448s) self.y self.x)
    push (+ 5.7d (random[]:int32 (var 0.6d)))
    stog.speed* = (int32 self.g)
    push (+ 0.24d (random[]:int32 (var 0.02d)))
    stog.friction* = (int32 self.g)
    push (+ (/ (* self.i 360s) (double 12s)) (random[]:int32 (var 5s)))
    stog.direction* = (int32 self.g)
    self.i = (+ self.i 1s)
    goto 0x000168
0x00027C:
    if !(> self.timer 7s) goto 0x0002A4
0x000290:
    push (< self.timer 10s)
    goto 0x0002A8
0x0002A4:
    push 0s
0x0002A8:
    if !pop goto 0x00034C
0x0002AC:
    self.shake = (+ self.shake 6s)
    self.size = (+ self.size 0.75d)
    if !(== self.another 2s) goto 0x000318
0x0002F8:
    self.size = (+ self.size 0.15d)
0x000318:
    if !(== self.another 3s) goto 0x00034C
0x00032C:
    self.size = (+ self.size 0.25d)
0x00034C:
    if !(== self.timer 13s) goto 0x000384
0x000360:
    self.image_speed = 0s
    self.image_index = 0s
    self.size = 1s
0x000384:
    if !(>= self.timer 13s) goto 0x0003D0
0x000398:
    self.shake = (- self.shake 2s)
    if !(< self.shake 1s) goto 0x0003D0
0x0003C4:
    self.shake = 0s
0x0003D0:
    if !(> self.timer 20s) goto 0x0005D8
0x0003E4:
    if !(!= self.another 0s) goto 0x0005AC
0x0003F8:
    if !(== self.another 1s) goto 0x0004B4
0x00040C:
    global.turntimer = 900s
    self.mtb = (instance_create[]:int32 (var 449s) self.homey self.homex)
    push self.homex
    stog.homex* = (int32 self.mtb)
    push self.homey
    stog.homey* = (int32 self.mtb)
    push 2s
    stog.another* = (int32 self.mtb)
    push 0s
    stog.timer* = (int32 self.mtb)
    call (instance_destroy[]:int32 )
0x0004B4:
    if !(== self.another 2s) goto 0x000564
0x0004C8:
    self.mtb = (instance_create[]:int32 (var 449s) self.homey self.homex)
    push self.homex
    stog.homex* = (int32 self.mtb)
    push self.homey
    stog.homey* = (int32 self.mtb)
    push 3s
    stog.another* = (int32 self.mtb)
    push 0s
    stog.timer* = (int32 self.mtb)
    call (instance_destroy[]:int32 )
0x000564:
    if !(== self.another 3s) goto 0x0005A8
0x000578:
    [obj_mettb_body].heartdead = 1s
    global.turntimer = 900s
    [obj_mettheart_4].lastcon = 3s
    call (instance_destroy[]:int32 )
0x0005A8:
    goto 0x0005D8
0x0005AC:
    if !(> global.turntimer 9s) goto 0x0005CC
0x0005C0:
    global.turntimer = 9s
0x0005CC:
    [obj_mettb_body].dsf = 0s
0x0005D8:
    if !(> self.shake 0s) goto 0x000664
0x0005EC:
    self.x = (- (+ (- self.homex 5s) self.shake) (random[]:int32 (* self.shake 2s)))
    self.y = (- (+ self.homey self.shake) (random[]:int32 (* self.shake 2s)))
0x000664:
    if !(< global.turntimer 0s) goto 0x0006A4
0x000678:
    if !(== self.another 0s) goto 0x000698
0x00068C:
    global.faceemotion = 7s
0x000698:
    call (instance_destroy[]:int32 )
0x0006A4:
    global.faceemotion = 6s
0x0006B0:
    exit
