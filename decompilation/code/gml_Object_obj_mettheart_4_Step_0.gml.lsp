0x000000:
    self.life = (- self.life 1s)
    if !(< self.life 1000s) goto 0x000040
0x00002C:
    push (< self.shake 0s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000054
0x000048:
    self.shake = 1s
0x000054:
    if !(< self.life 500s) goto 0x00007C
0x000068:
    push (< self.shake 2s)
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x000090
0x000084:
    self.shake = 2s
0x000090:
    if !(== self.movetype 0s) goto 0x00031C
0x0000A4:
    if !(== self.moving 0s) goto 0x0001AC
0x0000B8:
    self.newx = (- (+ self.xstart (random[]:int32 (var 60s))) (random[]:int32 (var 60s)))
    self.newy = (- (+ self.ystart (random[]:int32 (var 20s))) (random[]:int32 (var 20s)))
    self.distspeed = (/ (distance_to_point[]:int32 self.newx self.newy) (double 20s))
    call (move_towards_point[]:int32 self.distspeed self.newy self.newx)
    stog.alarm[3s] = 8s
    self.moving = 1s
    self.image_speed = 0.5d
0x0001AC:
    if !(== self.moving 2s) goto 0x000260
0x0001C0:
    self.image_speed = 0s
    self.image_index = 0s
    self.chch = (choose[]:int32 (var 1s) (var 0s))
    self.thisx = (+ 743.x 10s)
    self.thisy = (+ 743.y 10s)
    self.ltimer = 100s
    self.speed = 0s
    self.moving = 3s
    stog.alarm[3s] = 30s
0x000260:
    if !(== self.moving 4s) goto 0x000280
0x000274:
    self.moving = 0s
0x000280:
    if !(> self.shake 0s) goto 0x00031C
0x000294:
    self.x = (+ self.x (- (random[]:int32 self.shake) (random[]:int32 self.shake)))
    self.y = (+ self.y (- (random[]:int32 self.shake) (random[]:int32 self.shake)))
    self.shake = (- self.shake 1s)
0x00031C:
    self.lightning_timer = (+ self.lightning_timer 1s)
    if !(>= self.ltimer 100s) goto 0x000724
0x000348:
    self.ltimer = (+ self.ltimer 1s)
    if (== self.ltimer 100s) goto 0x0003B0
0x000374:
    if (== self.ltimer 102s) goto 0x0003B0
0x000388:
    if (== self.ltimer 104s) goto 0x0003B0
0x00039C:
    push (== self.ltimer 106s)
    goto 0x0003B4
0x0003B0:
    push 1s
0x0003B4:
    if !pop goto 0x000454
0x0003B8:
    self.lt = (instance_create[]:int32 (var 433s) self.y self.x)
    push -0.1d
    stog.friction* = (int32 self.lt)
    push 8s
    stog.speed* = (int32 self.lt)
    push (point_direction[]:int32 self.thisy self.thisx self.y self.x)
    stog.direction* = (int32 self.lt)
0x000454:
    if (== self.ltimer 108s) goto 0x0004A4
0x000468:
    if (== self.ltimer 110s) goto 0x0004A4
0x00047C:
    if (== self.ltimer 112s) goto 0x0004A4
0x000490:
    push (== self.ltimer 114s)
    goto 0x0004A8
0x0004A4:
    push 1s
0x0004A8:
    if !pop goto 0x0005AC
0x0004AC:
    self.lt = (instance_create[]:int32 (var 433s) self.y self.x)
    push -0.1d
    stog.friction* = (int32 self.lt)
    push 8s
    stog.speed* = (int32 self.lt)
    if !(== self.chch 1s) goto 0x000568
0x000520:
    push (- (point_direction[]:int32 self.thisy self.thisx self.y self.x) 10s)
    stog.direction* = (int32 self.lt)
    goto 0x0005AC
0x000568:
    push (+ (point_direction[]:int32 self.thisy self.thisx self.y self.x) 10s)
    stog.direction* = (int32 self.lt)
0x0005AC:
    if (== self.ltimer 116s) goto 0x0005FC
0x0005C0:
    if (== self.ltimer 118s) goto 0x0005FC
0x0005D4:
    if (== self.ltimer 120s) goto 0x0005FC
0x0005E8:
    push (== self.ltimer 122s)
    goto 0x000600
0x0005FC:
    push 1s
0x000600:
    if !pop goto 0x000704
0x000604:
    self.lt = (instance_create[]:int32 (var 433s) self.y self.x)
    push -0.1d
    stog.friction* = (int32 self.lt)
    push 8s
    stog.speed* = (int32 self.lt)
    if !(== self.chch 1s) goto 0x0006C0
0x000678:
    push (+ (point_direction[]:int32 self.thisy self.thisx self.y self.x) 10s)
    stog.direction* = (int32 self.lt)
    goto 0x000704
0x0006C0:
    push (- (point_direction[]:int32 self.thisy self.thisx self.y self.x) 10s)
    stog.direction* = (int32 self.lt)
0x000704:
    if !(== self.ltimer 125s) goto 0x000724
0x000718:
    self.ltimer = 0s
0x000724:
    if !(> self.size 1s) goto 0x000798
0x000738:
    self.image_xscale = self.size
    self.image_yscale = self.size
    self.size = (- self.size 0.5d)
    if !(== self.size 1s) goto 0x000798
0x00078C:
    self.image_index = 0s
0x000798:
    if !(== self.lastcon 1s) goto 0x0007C0
0x0007AC:
    push (> global.turntimer 1s)
    goto 0x0007C4
0x0007C0:
    push 0s
0x0007C4:
    if !pop goto 0x0008F0
0x0007C8:
    pushenv 402s 0x0007DC
0x0007D0:
    self.active = 0s
0x0007DC:
    popenv 0x0007D0
0x0007E0:
    self.movetype = 1s
    self.lightning_timer = 400s
    self.visible = 0s
    global.faceemotion = 6s
    [obj_mettb_body].pause = 2s
    [obj_mettb_body].hurt = 2s
    [obj_mettb_body].dsf = 2s
    [obj_mettattackgen].dark = 0s
    call (caster_stop[]:int32 (var -3s))
    [obj_heart].shot = 0s
    global.turntimer = 900s
    self.mtb = (instance_create[]:int32 (var 449s) self.y self.x)
    push self.xstart
    stog.homex* = (int32 self.mtb)
    push self.ystart
    stog.homey* = (int32 self.mtb)
    push 1s
    stog.another* = (int32 self.mtb)
    self.lastcon = 2s
0x0008F0:
    if !(>= self.lastcon 2s) goto 0x00091C
0x000904:
    global.faceemotion = 6s
    [obj_mettb_body].hurt = 2s
0x00091C:
    if !(== self.lastcon 3s) goto 0x000968
0x000930:
    pushenv 414s 0x000944
0x000938:
    call (instance_destroy[]:int32 )
0x000944:
    popenv 0x000938
0x000948:
    self.lastcon = 4s
    stog.alarm[4s] = 50s
0x000968:
    if !(== self.lastcon 4s) goto 0x00099C
0x00097C:
    [obj_mettb_body].dsf = (- 408.dsf 0.04d)
0x00099C:
    if !(== self.lastcon 5s) goto 0x0009E0
0x0009B0:
    [obj_mettatonex].con = 50s
    global.mnfight = -1s
    global.myfight = -1s
    call (instance_destroy[]:int32 )
0x0009E0:
    exit
