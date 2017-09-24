0x000000:
    self.image_alpha = (+ self.image_alpha 0.05d)
    self.image_angle = (- self.image_angle self.rotspeed)
    if !(> self.rotspeed 0s) goto 0x000068
0x000050:
    self.rotspeed = (- self.rotspeed 2s)
0x000068:
    if !(== self.rotspeed 0s) goto 0x000090
0x00007C:
    push (< self.speed 1s)
    goto 0x000094
0x000090:
    push 0s
0x000094:
    if !pop goto 0x000104
0x000098:
    self.timer = (+ self.timer 1s)
    if !(== self.timer 5s) goto 0x000104
0x0000C4:
    self.speed = 8s
    self.friction = -0.3d
    self.direction = self.image_angle
    self.image_angle = self.direction
0x000104:
    if !(== self.fade 1s) goto 0x00012C
0x000118:
    push (>= self.speed 7s)
    goto 0x000130
0x00012C:
    push 0s
0x000130:
    if !pop goto 0x00016C
0x000134:
    self.timer = (+ self.timer 1s)
    if !(>= self.timer 22s) goto 0x00016C
0x000160:
    self.deactivate = 1s
0x00016C:
    self.xoff = (lengthdir_x[]:int32 self.direction (var 25s))
    self.yoff = (lengthdir_y[]:int32 self.direction (var 25s))
    if !(== self.rotspeed 0s) goto 0x0001D4
0x0001C0:
    push (== self.deactivate 0s)
    goto 0x0001D8
0x0001D4:
    push 0s
0x0001D8:
    if !pop goto 0x0002BC
0x0001DC:
    if !(bool (collision_line[]:int32 (var 0s) (var 1s) (var 743s) (+ self.y self.yoff) (+ self.x self.xoff) (- self.y (/ self.yoff (double 2s))) (- self.x (/ self.xoff (double 2s))))) goto 0x0002BC
0x00026C:
    if !(> global.hp 1s) goto 0x0002B0
0x000280:
    call (scr_damagestandard_x[]:int32 )
    if !(<= global.hp 0s) goto 0x0002AC
0x0002A0:
    global.hp = 1s
0x0002AC:
    goto 0x0002BC
0x0002B0:
    global.hp = 0s
0x0002BC:
    if !(== self.deactivate 1s) goto 0x000310
0x0002D0:
    self.image_alpha = (- self.image_alpha 0.25d)
    if !(<= self.image_alpha 0s) goto 0x000310
0x000304:
    call (instance_destroy[]:int32 )
0x000310:
    if !(< global.turntimer 1s) goto 0x000330
0x000324:
    call (instance_destroy[]:int32 )
0x000330:
    exit
