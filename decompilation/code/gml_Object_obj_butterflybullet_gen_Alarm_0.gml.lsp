0x000000:
    if !(== self.green 1s) goto 0x000034
0x000014:
    self.j = (floor[]:int32 (random[]:int32 (var 16s)))
0x000034:
    self.i = 0s
    if !(< self.i 18s) goto 0x0002B0
0x000054:
    if !(== self.green 1s) goto 0x0000E8
0x000068:
    push (var 399s)
    push -20s
    self.blt = (instance_create[]:int32 (+ (+ -5s 2s:idealborder) (/ (c_borderheight[]:int32 (var 0s)) (double 2s))) -5s (+ 0s:idealborder (/ (c_borderwidth[]:int32 (var 0s)) (double 2s))))
0x0000E8:
    if !(== self.green 0s) goto 0x000174
0x0000FC:
    push (var 399s)
    push -5s
    self.blt = (instance_create[]:int32 (+ 2s:idealborder (/ (c_borderheight[]:int32 (var 0s)) (double 2s))) -5s (+ 0s:idealborder (/ (c_borderwidth[]:int32 (var 0s)) (double 2s))))
0x000174:
    if !(bool (instance_exists[]:int32 self.blt)) goto 0x0001F8
0x00018C:
    push (* self.i 0.2d)
    stog.image_index* = (int32 self.blt)
    push (* self.i 20s)
    stog.siner* = (int32 self.blt)
    push self.dmg
    stog.dmg* = (int32 self.blt)
0x0001F8:
    if !(== self.green 1s) goto 0x000294
0x00020C:
    if (== self.i self.j) goto 0x000244
0x000224:
    push (== self.i (+ self.j 1s))
    goto 0x000248
0x000244:
    push 1s
0x000248:
    if !pop goto 0x000294
0x00024C:
    push 1s
    stog.green* = (int32 self.blt)
    if !(bool (instance_exists[]:int32 self.blt)) goto 0x000294
0x00027C:
    push 484s
    stog.sprite_index* = (int32 self.blt)
0x000294:
    self.i = (+ self.i 1s)
    goto 0x000040
0x0002B0:
    if !(== self.green 1s) goto 0x000344
0x0002C4:
    [obj_butterflybullet].s2factor = 0s
    [obj_butterflybullet].sineradd = 6s
    self.sum = (scr_monstersum[]:int32 )
    if !(> self.sum 1s) goto 0x00030C
0x000300:
    [obj_butterflybullet].sineradd = 4s
0x00030C:
    if !(> self.sum 2s) goto 0x000344
0x000320:
    [obj_butterflybullet].sineradd = 3s
    [obj_butterflybullet].sinerfactor = (+ 399.sinerfactor 2s)
0x000344:
    if !(== self.green 0s) goto 0x000410
0x000358:
    [obj_butterflybullet].sinerfactor = (+ 399.sinerfactor 8s)
    self.sum = (scr_monstersum[]:int32 )
    if !(bool (instance_exists[]:int32 (var 380s))) goto 0x0003AC
0x000398:
    push (< self.sum 3s)
    goto 0x0003B0
0x0003AC:
    push 0s
0x0003B0:
    if !pop goto 0x0003E4
0x0003B4:
    [obj_butterflybullet].y = (+ 399.y 15s)
    [obj_butterflybullet].sinerfactor = (- 399.sinerfactor 8s)
0x0003E4:
    if !(> self.sum 2s) goto 0x000410
0x0003F8:
    [obj_butterflybullet].sinerfactor = (+ 399.sinerfactor 8s)
0x000410:
    exit
