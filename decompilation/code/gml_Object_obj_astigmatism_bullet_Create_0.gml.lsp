0x000000:
    self.siner = 0s
    self.asiner = (random[]:int32 (var 300s))
    self.kid = (instance_create[]:int32 (var 392s) self.y self.x)
    push (+ self.x (* (sin[]:int32 (/ self.asiner (double 16s))) 14s))
    stog.x* = (int32 self.kid)
    push (+ self.y (* (cos[]:int32 (/ self.asiner (double 16s))) 14s))
    stog.y* = (int32 self.kid)
    self.kid2 = (instance_create[]:int32 (var 392s) self.y self.x)
    push 481s
    stog.sprite_index* = (int32 self.kid2)
    push (+ self.x (* (sin[]:int32 (/ self.asiner (double 16s))) 28s))
    stog.x* = (int32 self.kid2)
    push (+ self.y (* (cos[]:int32 (/ self.asiner (double 16s))) 28s))
    stog.y* = (int32 self.kid2)
    self.vspeed = (+ -1s (random[]:int32 (var 2s)))
    push self.y
    if !(> -5s (- 3s:idealborder 50s)) goto 0x0001F8
0x0001E4:
    push (> self.vspeed 0s)
    goto 0x0001FC
0x0001F8:
    push 0s
0x0001FC:
    if !pop goto 0x000254
0x000200:
    self.vspeed = (* self.vspeed -1s)
    if !(< (abs[]:int32 self.vspeed) 0.3d) goto 0x000254
0x00023C:
    self.vspeed = (* self.vspeed 2s)
0x000254:
    push self.y
    if !(< -5s (+ 2s:idealborder 50s)) goto 0x000290
0x00027C:
    push (< self.vspeed 0s)
    goto 0x000294
0x000290:
    push 0s
0x000294:
    if !pop goto 0x0002EC
0x000298:
    self.vspeed = (* self.vspeed -1s)
    if !(< (abs[]:int32 self.vspeed) 0.3d) goto 0x0002EC
0x0002D4:
    self.vspeed = (* self.vspeed 2s)
0x0002EC:
    self.hspeed = (- -3s (random[]:int32 (var 1s)))
    self.av = (* (+ 0.7d (random[]:int32 (var 0.5d))) (choose[]:int32 (var -1s) (var 1s)))
    self.image_alpha = 0s
    self.off = 0s
    self.dmg = 8s
    self.image_alpha = 0s
    self.sum = (scr_monstersum[]:int32 )
    self.factor1 = 22s
    self.factor2 = 40s
    if !(> self.sum 1s) goto 0x000428
0x0003C4:
    self.factor1 = 18s
    self.factor2 = 36s
    self.av = (* (+ 0.7d (random[]:int32 (var 0.5d))) (choose[]:int32 (var -1s) (var 1s)))
0x000428:
    if !(> self.sum 2s) goto 0x0004C8
0x00043C:
    self.hspeed = (- -2.5d (random[]:int32 (var 1s)))
    self.factor1 = 16s
    self.factor2 = 32s
    self.av = (* (+ 0.6d (random[]:int32 (var 0.5d))) (choose[]:int32 (var -1s) (var 1s)))
0x0004C8:
    exit
