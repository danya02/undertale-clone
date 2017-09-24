0x000000:
    if (> global.invc 0s) goto 0x000028
0x000014:
    push (== 154.runaway 1s)
    goto 0x00002C
0x000028:
    push 1s
0x00002C:
    if !pop goto 0x000048
0x000030:
    self.image_speed = 0.5d
    goto 0x000060
0x000048:
    self.image_index = 0s
    self.image_speed = 0s
0x000060:
    if !(== self.type 0s) goto 0x000360
0x000074:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x0000C8
0x00008C:
    if !(> self.x (- self.xmid self.xlen)) goto 0x0000C8
0x0000B0:
    self.x = (- self.x 4s)
0x0000C8:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x00011C
0x0000E0:
    if !(< self.x (+ self.xmid self.xlen)) goto 0x00011C
0x000104:
    self.x = (+ self.x 4s)
0x00011C:
    if !(bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x000170
0x000134:
    if !(== self.moving 0s) goto 0x00015C
0x000148:
    push (> self.yno 1s)
    goto 0x000160
0x00015C:
    push 0s
0x000160:
    if !pop goto 0x000170
0x000164:
    self.moving = 1s
0x000170:
    if !(== self.moving 1s) goto 0x00023C
0x000184:
    self.space = (+ self.space (/ self.yspace (double 3s)))
    self.y = (+ (- (+ self.yzero (* (- self.yno 1s) self.yspace)) self.space) self.yoff)
    if !(>= self.space self.yspace) goto 0x00023C
0x00020C:
    self.yno = (- self.yno 1s)
    self.space = 0s
    self.moving = 0s
0x00023C:
    if !(bool (keyboard_check_pressed[]:int32 (var 40s))) goto 0x000294
0x000254:
    if !(== self.moving 0s) goto 0x000280
0x000268:
    push (< self.yno self.yamt)
    goto 0x000284
0x000280:
    push 0s
0x000284:
    if !pop goto 0x000294
0x000288:
    self.moving = 2s
0x000294:
    if !(== self.moving 2s) goto 0x000360
0x0002A8:
    self.space = (+ self.space (/ self.yspace (double 3s)))
    self.y = (+ (+ (+ self.yzero (* (- self.yno 1s) self.yspace)) self.space) self.yoff)
    if !(>= self.space self.yspace) goto 0x000360
0x000330:
    self.yno = (+ self.yno 1s)
    self.space = 0s
    self.moving = 0s
0x000360:
    if !(== self.ttype 1s) goto 0x000484
0x000374:
    self.yoff = (+ self.yoff self.yadd)
    self.y = (+ self.y self.yadd)
    if !(> self.yoff self.yspace) goto 0x000484
0x0003C4:
    self.yno = (+ self.yno 1s)
    if !(> self.yno self.yamt) goto 0x00041C
0x0003F4:
    self.yno = self.yamt
    self.dmg = 6s
    call (scr_damagestandard_x[]:int32 )
0x00041C:
    self.yoff = 0s
    if !(== self.moving 0s) goto 0x000484
0x00043C:
    self.y = (+ (+ (+ self.yzero (* (- self.yno 1s) self.yspace)) self.space) self.yoff)
0x000484:
    if !(== self.ttype 3s) goto 0x00060C
0x000498:
    if !(== (instance_exists[]:int32 (var 349s)) 0s) goto 0x0004E4
0x0004B4:
    call (instance_create[]:int32 (var 349s) (var 460s) (- self.xmid self.xlen))
0x0004E4:
    if !(bool (instance_exists[]:int32 (var 349s))) goto 0x000528
0x0004FC:
    if !(> 349.y 320s) goto 0x000528
0x000510:
    [obj_hideouscupcake].y = (- 349.y 4s)
0x000528:
    if !(> self.yzero 100s) goto 0x000554
0x00053C:
    self.yzero = (- self.yzero 4s)
0x000554:
    self.y = (- self.y 4s)
    self.yz2 = (+ self.yz2 4s)
    if !(> self.yz2 self.yspace) goto 0x0005D0
0x00059C:
    self.yz2 = (- self.yz2 self.yspace)
    self.yamt = (+ self.yamt 1s)
0x0005D0:
    if !(<= self.yzero 100s) goto 0x00060C
0x0005E4:
    self.yzero = 100s
    self.ttype = 1s
    self.yadd = self.yadd2
0x00060C:
    if !(== global.mnfight 2s) goto 0x000644
0x000620:
    if !(bool (instance_exists[]:int32 (var 743s))) goto 0x000644
0x000638:
    [obj_heart].x = -200s
0x000644:
    exit
