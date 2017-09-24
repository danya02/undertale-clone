0x000000:
    if !(> self.y (+ self.ystart 48s)) goto 0x000034
0x000020:
    push (== self.stagetimer 0s)
    goto 0x000038
0x000034:
    push 0s
0x000038:
    if !pop goto 0x00010C
0x00003C:
    self.stagetimer = 1s
    call (snd_play[]:int32 (var 22s))
    self.kid = (scr_marker[]:int32 (var 1578s) (+ (+ self.y self.sprite_height) 10s) (+ (+ self.x (/ self.sprite_width (double 2s))) 8s))
    push 4s
    stog.image_xscale* = (int32 self.kid)
    push 0s
    stog.image_yscale* = (int32 self.kid)
    push (- self.depth 10s)
    stog.depth* = (int32 self.kid)
0x00010C:
    if !(> self.y (+ self.ystart 55s)) goto 0x000140
0x00012C:
    push (== self.stage 0s)
    goto 0x000144
0x000140:
    push 0s
0x000144:
    if !pop goto 0x0001C4
0x000148:
    self.stage = 1s
    self.sprite_index = 1306s
    self.image_speed = 0.2d
    self.gravity = 0s
    self.friction = 0s
    self.vspeed = 0s
    self.hspeed = 0s
    self.hspeed = 1s
    self.friction = -0.1d
0x0001C4:
    if !(== self.stagetimer 1s) goto 0x000310
0x0001D8:
    if !(bool (instance_exists[]:int32 self.kid)) goto 0x000310
0x0001F0:
    if !(> (int32 self.kid):image_xscale 2s) goto 0x000240
0x000210:
    stog.image_xscale* = (- (int32 self.kid):image_xscale 0.4d)
0x000240:
    push (int32 self.kid)
    stog.image_yscale* = (+ (int32 self.kid):image_yscale 0.2d)
    if !(> (int32 self.kid):image_yscale 0.8d) goto 0x0002C8
0x000298:
    push (int32 self.kid)
    stog.image_alpha* = (- (int32 self.kid):image_alpha 0.2d)
0x0002C8:
    push (int32 self.kid)
    if !(< (int32 self.kid):image_alpha 0.2d) goto 0x000310
0x0002F0:
    pushenv (int32 self.kid) 0x00030C
0x000300:
    call (instance_destroy[]:int32 )
0x00030C:
    popenv 0x000300
0x000310:
    if !(> self.x (+ self.room_width 80s)) goto 0x000374
0x000330:
    if !(bool (instance_exists[]:int32 self.kid)) goto 0x000368
0x000348:
    pushenv (int32 self.kid) 0x000364
0x000358:
    call (instance_destroy[]:int32 )
0x000364:
    popenv 0x000358
0x000368:
    call (instance_destroy[]:int32 )
0x000374:
    exit
