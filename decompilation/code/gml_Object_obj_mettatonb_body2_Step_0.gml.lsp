0x000000:
    push -1s
    self.image_angle = (* 1s:pspeed 2s)
    stog.pspeed[0s] = self.hspeed
    self.i = 4s
    if !(> self.i 0s) goto 0x0000AC
0x000058:
    push -1s
    stog.pspeed[(int32 self.i)] = (int32 (- self.i 1s)):pspeed
    self.i = (- self.i 1s)
    goto 0x000044
0x0000AC:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)) goto 0x000108
0x0000F4:
    push (== self.tang 1s)
    goto 0x00010C
0x000108:
    push 0s
0x00010C:
    if !pop goto 0x00034C
0x000110:
    if !(bool (instance_exists[]:int32 (var 298s))) goto 0x000210
0x000128:
    call (snd_play[]:int32 (var 51s))
    self.jimbo = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)
    pushenv (int32 self.jimbo) 0x0001A0
0x000194:
    call (instance_destroy[]:int32 )
0x0001A0:
    popenv 0x000194
0x0001A4:
    self.hit = (+ self.hit 1s)
    if !(< self.hit 8s) goto 0x0001E4
0x0001D0:
    stog.alarm[5s] = 60s
0x0001E4:
    if !(== self.shudderon 0s) goto 0x000204
0x0001F8:
    self.shudderon = 1s
0x000204:
    self.shudder = 10s
0x000210:
    if !(bool (instance_exists[]:int32 (var 299s))) goto 0x00034C
0x000228:
    if !(== self.hitted 0s) goto 0x000268
0x00023C:
    self.hitted = 1s
    stog.alarm[3s] = 30s
    global.turntimer = 50s
0x000268:
    call (snd_play[]:int32 (var 28s))
    self.jimbo = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 739s) self.bbox_bottom self.bbox_right self.bbox_top self.bbox_left)
    self.gi = (instance_create[]:int32 (var 740s) (int32 self.jimbo):y (int32 self.jimbo):x)
    push (int32 self.jimbo):image_yscale
    stog.image_yscale* = (int32 self.gi)
    pushenv (int32 self.jimbo) 0x000348
0x00033C:
    call (instance_destroy[]:int32 )
0x000348:
    popenv 0x00033C
0x00034C:
    if !(== self.shudderon 1s) goto 0x000414
0x000360:
    if !(== self.sha 0s) goto 0x000384
0x000374:
    self.sha = self.x
0x000384:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x0003D4
0x0003B4:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x0003E8
0x0003D4:
    self.shudder = (- self.shudder)
0x0003E8:
    if !(== self.shudder 0s) goto 0x000414
0x0003FC:
    self.sha = 0s
    self.shudderon = 0s
0x000414:
    exit
