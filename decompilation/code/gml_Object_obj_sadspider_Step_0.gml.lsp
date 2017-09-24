0x000000:
    if !(== self.con 0s) goto 0x000028
0x000014:
    push (< self.x 400s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000088
0x000030:
    self.hspeed = (- self.hspeed 0.2d)
    if !(<= self.hspeed 0s) goto 0x000088
0x000064:
    self.image_speed = 0s
    self.hspeed = 0s
    self.con = 1s
0x000088:
    if !(== self.con 1s) goto 0x0000BC
0x00009C:
    stog.alarm[4s] = 90s
    self.con = 2s
0x0000BC:
    if !(== self.con 2s) goto 0x000110
0x0000D0:
    self.image_speed = 0.1d
    self.hspeed = -1s
    self.con = 3s
    stog.alarm[4s] = 30s
0x000110:
    if !(== self.con 4s) goto 0x00015C
0x000124:
    self.image_speed = 0s
    self.hspeed = 0s
    self.con = 5s
    stog.alarm[4s] = 90s
0x00015C:
    if !(== self.con 6s) goto 0x00019C
0x000170:
    self.hspeed = 6s
    self.image_speed = 0.25d
    self.con = 7s
0x00019C:
    if !(== self.con 7s) goto 0x000284
0x0001B0:
    if !(> self.x 800s) goto 0x000284
0x0001C4:
    self.con = 8s
    self.flower = (instance_create[]:int32 (var 1363s) (- self.y 8s) self.x)
    push 411s
    stog.sprite_index* = (int32 self.flower)
    push 2s
    stog.image_xscale* = (int32 self.flower)
    push 2s
    stog.image_yscale* = (int32 self.flower)
    push 0s
    stog.image_speed* = (int32 self.flower)
    push 1s
    stog.visible* = (int32 self.flower)
    self.hspeed = -3s
0x000284:
    if !(> self.con 7s) goto 0x0002AC
0x000298:
    push (< self.con 10s)
    goto 0x0002B0
0x0002AC:
    push 0s
0x0002B0:
    if !pop goto 0x0002FC
0x0002B4:
    push (- self.x 20s)
    stog.x* = (int32 self.flower)
    push (- self.y 20s)
    stog.y* = (int32 self.flower)
0x0002FC:
    if !(== self.con 8s) goto 0x000390
0x000310:
    if !(< self.x 380s) goto 0x000390
0x000324:
    self.hspeed = (+ self.hspeed 0.1d)
    if !(>= self.hspeed 0s) goto 0x000390
0x000358:
    self.image_speed = 0s
    self.hspeed = 0s
    self.con = 9s
    stog.alarm[4s] = 50s
0x000390:
    if !(== self.con 10s) goto 0x000450
0x0003A4:
    stog.x* = (- (int32 self.flower):x 0.5d)
    stog.y* = (+ (int32 self.flower):y 0.25d)
    if !(> (int32 self.flower):y (- self.y 6s)) goto 0x000450
0x000430:
    push (int32 self.flower)
    push (int32 self.flower)
    self.con = 11s
    stog.alarm[4s] = 90s
0x000450:
    if !(== self.con 12s) goto 0x0004A4
0x000464:
    self.hspeed = 2s
    self.image_speed = 0.25d
    self.con = 13s
    stog.alarm[4s] = 20s
0x0004A4:
    if !(== self.con 14s) goto 0x0004F0
0x0004B8:
    self.hspeed = 0s
    self.image_speed = 0s
    self.con = 15s
    stog.alarm[4s] = 60s
0x0004F0:
    if !(== self.con 16s) goto 0x000544
0x000504:
    stog.monster[0s] = 0s
    self.hspeed = 8s
    self.image_speed = 0.5d
    self.con = 17s
0x000544:
    if !(== self.con 17s) goto 0x00056C
0x000558:
    push (> self.x 700s)
    goto 0x000570
0x00056C:
    push 0s
0x000570:
    if !pop goto 0x000580
0x000574:
    call (instance_destroy[]:int32 )
0x000580:
    exit
