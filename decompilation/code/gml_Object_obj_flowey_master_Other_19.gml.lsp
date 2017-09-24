0x000000:
    self.loadtimer = 25s
    self.fileset = 3s
    global.my_hp = 50s
    if !(< self.destroyer 28s) goto 0x000048
0x000038:
    [obj_vsflowey_heart].move = 1s
    goto 0x000054
0x000048:
    [obj_vsflowey_heart].move = 0s
0x000054:
    stog.alarm[9s] = 3s
    self.destroyer = (+ self.destroyer 1s)
    if !(> self.destroyer 3s) goto 0x0000D4
0x000094:
    self.flx = (+ 0s (random[]:int32 (var 320s)))
    self.fly = (- 0s (random[]:int32 (var 60s)))
0x0000D4:
    [obj_vsflowey_heart].depth = (- self.depth 1s)
    [obj_vsflowey_heart].x = 314s
    [obj_vsflowey_heart].y = 422s
    [obj_vsflowey_heart].special = 1s
    [obj_vsflowey_heart].sprite_index = 2270s
    call (caster_stop[]:int32 (var -3s))
    call (caster_play[]:int32 (var 1s) (var 1s) self.mus_hit)
    pushenv 1586s 0x000174
0x00015C:
    self.siner = 0s
    self.image_index = 0s
0x000174:
    popenv 0x00015C
0x000178:
    pushenv 1627s 0x00018C
0x000180:
    call (instance_destroy[]:int32 )
0x00018C:
    popenv 0x000180
0x000190:
    if !(== self.o_kill 0s) goto 0x0001B4
0x0001A4:
    self.o_kill = 1s
    goto 0x0001C0
0x0001B4:
    self.o_kill = 0s
0x0001C0:
    if !(== self.o_kill 0s) goto 0x000364
0x0001D4:
    pushenv 1590s 0x000218
0x0001DC:
    self.laugh = 0s
    self.mode = 0s
    self.rotbonus = 0s
    self.xbonus = 0s
    self.ybonus = 0s
0x000218:
    popenv 0x0001DC
0x00021C:
    [obj_floweyx_flipeye].md = 0s
    [obj_floweyx_flipeye].con = 0s
    if (<= 30s 0) goto 0x00035C
0x00024C:
    push 30s
    self.m = (instance_create[]:int32 (var 1637s) (var 200s) (+ 110s (random[]:int32 (var 400s))))
    pushenv (int32 self.m) 0x000340
0x000294:
    self.visible = 1s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.image_alpha = 1s
    self.depth = 12s
    self.xx = (+ 1581.x 8s)
    self.yy = (+ 1581.y 8s)
    self.direction = (point_direction[]:int32 self.yy self.xx self.y self.x)
    self.image_angle = self.direction
0x000340:
    popenv 0x000294
0x000344:
    if (bool (- pop 1)) goto 0x00024C
0x00035C:
    push (- pop 1)
    pop
    goto 0x0003F8
0x000364:
    pushenv 1590s 0x0003F4
0x00036C:
    self.laugh = 1s
    self.mode = 2s
    self.b = (instance_create[]:int32 (var 1639s) (var 214s) (var 271s))
    push (+ self.depth 1s)
    stog.depth* = (int32 self.b)
    self.rotbonus = 15s
    self.xbonus = -4s
    self.ybonus = 6s
0x0003F4:
    popenv 0x00036C
0x0003F8:
    exit
