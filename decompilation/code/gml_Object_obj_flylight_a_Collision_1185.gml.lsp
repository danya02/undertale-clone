0x000000:
    self.b = (instance_create[]:int32 (var 1188s) self.y self.x)
    push (- (/ (- self.vspeed) (double 2s)) (random[]:int32 (var 1s)))
    stog.vspeed* = (int32 self.b)
    push self.hspeed
    stog.hspeed* = (int32 self.b)
    stog.hspeed* = (+ (int32 self.b):hspeed (- 2s (random[]:int32 (var 4s))))
    push self.image_angle
    stog.image_angle* = (int32 self.b)
    push self.image_xscale
    stog.image_xscale* = (int32 self.b)
    push self.image_yscale
    stog.image_yscale* = (int32 self.b)
    if !(bool (instance_exists[]:int32 (var 1196s))) goto 0x0001CC
0x00012C:
    push (int32 self.b)
    if !(> 1196.fakev -2s) goto 0x000158
0x000140:
    [obj_counterscroller].fakev = (- 1196.fakev 6s)
0x000158:
    if !(< 1196.fakev -3s) goto 0x000178
0x00016C:
    [obj_counterscroller].fakev = -3s
0x000178:
    call (snd_play[]:int32 (var 92s))
    if !(== (instance_exists[]:int32 (var 184s)) 0s) goto 0x0001CC
0x0001A8:
    call (scr_shake[]:int32 (var 2s) (var 2s) (var 2s))
0x0001CC:
    call (instance_destroy[]:int32 )
0x0001D8:
    exit
