0x000000:
    self.ks = (+ self.ks 1s)
    stog.y* = (+ (int32 self.king):y (* (sin[]:int32 (/ self.ks (double 8s))) 0.5d))
    self.y = (+ self.y self.tyspeed)
    self.x = (+ self.x self.txspeed)
    if !(> (abs[]:int32 self.txspeed) 0s) goto 0x0000DC
0x0000BC:
    push (int32 self.king)
    self.txspeed = (* self.txspeed 0.5d)
0x0000DC:
    if !(<= (abs[]:int32 self.txspeed) 1s) goto 0x000104
0x0000F8:
    self.txspeed = 0s
0x000104:
    if !(> (abs[]:int32 self.tyspeed) 0s) goto 0x000140
0x000120:
    self.tyspeed = (* self.tyspeed 0.5d)
0x000140:
    if !(<= (abs[]:int32 self.tyspeed) 1s) goto 0x000168
0x00015C:
    self.tyspeed = 0s
0x000168:
    if !(< self.x self.thisx) goto 0x0001B4
0x000180:
    self.x = (+ self.x (/ (- self.thisx self.x) (double 3s)))
0x0001B4:
    if !(< self.y self.thisy) goto 0x000200
0x0001CC:
    self.y = (+ self.y (/ (- self.thisy self.y) (double 3s)))
0x000200:
    if !(> self.x self.thisx) goto 0x00024C
0x000218:
    self.x = (+ self.x (/ (- self.thisx self.x) (double 3s)))
0x00024C:
    if !(> self.y self.thisy) goto 0x000298
0x000264:
    self.y = (+ self.y (/ (- self.thisy self.y) (double 3s)))
0x000298:
    if !(< (abs[]:int32 (- self.x self.thisx)) 2s) goto 0x0002D0
0x0002C0:
    self.x = self.thisx
0x0002D0:
    if !(< (abs[]:int32 (- self.x self.thisy)) 2s) goto 0x000308
0x0002F8:
    self.y = self.thisy
0x000308:
    if !(== self.bb 99s) goto 0x0003A0
0x00031C:
    if !(> self.vspeed 0s) goto 0x000348
0x000330:
    push (>= self.y self.thisy)
    goto 0x00034C
0x000348:
    push 0s
0x00034C:
    if !pop goto 0x0003A0
0x000350:
    self.y = self.thisy
    self.x = self.thisx
    self.bb = 0s
    self.gravity = 0s
    self.vspeed = 0s
    self.hspeed = 0s
0x0003A0:
    if !(== self.unhinge 0s) goto 0x0003FC
0x0003B4:
    if !(> self.image_index 0s) goto 0x0003DC
0x0003C8:
    push (> self.vspeed -2s)
    goto 0x0003E0
0x0003DC:
    push 0s
0x0003E0:
    if !pop goto 0x0003FC
0x0003E4:
    self.image_index = (- self.image_index 1s)
0x0003FC:
    if !(== self.home 1s) goto 0x000458
0x000410:
    self.image_angle = (+ (point_direction[]:int32 (+ 743.y 8s) (+ 743.x 8s) self.y self.x) 90s)
0x000458:
    if !(== self.con 0s) goto 0x0004B0
0x00046C:
    if !(< self.image_alpha 1s) goto 0x0004A4
0x000480:
    self.image_alpha = (+ self.image_alpha 0.1d)
    goto 0x0004B0
0x0004A4:
    self.con = 1s
0x0004B0:
    if !(== self.h_mode 0s) goto 0x000B28
0x0004C4:
    if !(== self.con 1s) goto 0x000B28
0x0004D8:
    self.ctimer = (+ self.ctimer 0.5d)
    if !(>= self.ctimer 27.5d) goto 0x000534
0x000514:
    self.ctimer = (+ self.ctimer 0.5d)
0x000534:
    if !(== self.ctimer 1s) goto 0x000598
0x000548:
    self.l_timer = 20s
    self.home = 1s
    self.type = 1s
    self.fire = 0s
    self.maxfire = 6s
    stog.alarm[5s] = 20s
0x000598:
    if !(== self.ctimer 28s) goto 0x0005FC
0x0005AC:
    self.l_timer = 10s
    self.home = 1s
    self.type = 2s
    self.fire = 0s
    self.maxfire = 6s
    stog.alarm[5s] = 10s
0x0005FC:
    if !(== self.ctimer 54s) goto 0x000660
0x000610:
    self.l_timer = 8s
    self.home = 1s
    self.type = 1s
    self.fire = 0s
    self.maxfire = 5s
    stog.alarm[5s] = 8s
0x000660:
    if !(== self.ctimer 78s) goto 0x0006C4
0x000674:
    self.l_timer = 8s
    self.home = 1s
    self.type = 2s
    self.fire = 0s
    self.maxfire = 5s
    stog.alarm[5s] = 8s
0x0006C4:
    if !(== self.ctimer 100s) goto 0x000728
0x0006D8:
    self.l_timer = 8s
    self.home = 1s
    self.type = 1s
    self.fire = 0s
    self.maxfire = 4s
    stog.alarm[5s] = 8s
0x000728:
    if !(== self.ctimer 122s) goto 0x00078C
0x00073C:
    self.l_timer = 8s
    self.home = 1s
    self.type = 2s
    self.fire = 0s
    self.maxfire = 4s
    stog.alarm[5s] = 8s
0x00078C:
    if !(== self.ctimer 140s) goto 0x0007F0
0x0007A0:
    self.l_timer = 6s
    self.home = 1s
    self.type = 1s
    self.fire = 0s
    self.maxfire = 4s
    stog.alarm[5s] = 6s
0x0007F0:
    if !(== self.ctimer 156s) goto 0x000854
0x000804:
    self.l_timer = 6s
    self.home = 1s
    self.type = 2s
    self.fire = 0s
    self.maxfire = 4s
    stog.alarm[5s] = 6s
0x000854:
    if !(== self.ctimer 170s) goto 0x0008B8
0x000868:
    self.l_timer = 6s
    self.home = 1s
    self.type = 1s
    self.fire = 0s
    self.maxfire = 8s
    stog.alarm[5s] = 6s
0x0008B8:
    if !(== self.ctimer 190s) goto 0x000904
0x0008CC:
    call (caster_play[]:int32 (var 0.55d) (var 1s) self.sfx_p)
    self.meter = 1s
0x000904:
    if !(== self.ctimer 205s) goto 0x000930
0x000918:
    self.home = 0s
    self.aaspeed = 45s
0x000930:
    if !(>= self.ctimer 205s) goto 0x000958
0x000944:
    push (< self.ctimer 255s)
    goto 0x00095C
0x000958:
    push 0s
0x00095C:
    if !pop goto 0x0009C4
0x000960:
    self.image_angle = (+ self.image_angle self.aaspeed)
    if !(> self.aaspeed 0s) goto 0x0009AC
0x000990:
    self.aaspeed = (- self.aaspeed 3s)
    goto 0x0009C4
0x0009AC:
    self.aaspeed = 0s
    self.ctimer = 255s
0x0009C4:
    if !(== self.ctimer 255s) goto 0x0009E4
0x0009D8:
    self.home = 1s
0x0009E4:
    if !(== self.ctimer 257s) goto 0x000A28
0x0009F8:
    self.sprite_index = 2372s
    self.image_speed = 1s
    self.unhinge = 1s
    self.home = 0s
0x000A28:
    if !(== self.ctimer 275s) goto 0x000A98
0x000A3C:
    self.metercounter = 7s
    call (caster_play[]:int32 (var 1.1d) (var 1s) self.sfx_l)
    self.blast = 1s
    self.bt = 70s
    self.btimer = 0s
0x000A98:
    if !(>= self.ctimer 315s) goto 0x000B28
0x000AAC:
    pushenv (int32 self.king) 0x000ADC
0x000ABC:
    if !(== self.guncon 5s) goto 0x000ADC
0x000AD0:
    self.guncon = 7s
0x000ADC:
    popenv 0x000ABC
0x000AE0:
    self.image_alpha = (- self.image_alpha 0.1d)
    if !(< self.image_alpha 0.1d) goto 0x000B28
0x000B1C:
    call (instance_destroy[]:int32 )
0x000B28:
    if !(== self.h_mode 1s) goto 0x001384
0x000B3C:
    if !(== self.con 1s) goto 0x001384
0x000B50:
    self.ctimer = (+ self.ctimer 0.5d)
    if !(>= self.ctimer 19.5d) goto 0x000BAC
0x000B8C:
    self.ctimer = (+ self.ctimer 0.5d)
0x000BAC:
    if !(== self.ctimer 1s) goto 0x000C10
0x000BC0:
    self.l_timer = 20s
    self.home = 1s
    self.type = 1s
    self.fire = 0s
    self.maxfire = 6s
    stog.alarm[5s] = 20s
0x000C10:
    if !(== self.ctimer 25s) goto 0x000C88
0x000C24:
    self.l_timer = 10s
    self.home = 1s
    self.type = (choose[]:int32 (var 2s) (var 1s))
    self.fire = 0s
    self.maxfire = 6s
    stog.alarm[5s] = 10s
0x000C88:
    if !(== self.ctimer 50s) goto 0x000D00
0x000C9C:
    self.l_timer = 8s
    self.home = 1s
    self.type = (choose[]:int32 (var 2s) (var 1s))
    self.fire = 0s
    self.maxfire = 5s
    stog.alarm[5s] = 8s
0x000D00:
    if !(== self.ctimer 75s) goto 0x000D64
0x000D14:
    self.l_timer = 7s
    self.home = 1s
    self.type = 2s
    self.fire = 0s
    self.maxfire = 4s
    stog.alarm[5s] = 7s
0x000D64:
    if !(== self.ctimer 95s) goto 0x000DC8
0x000D78:
    self.l_timer = 7s
    self.home = 1s
    self.type = 1s
    self.fire = 0s
    self.maxfire = 4s
    stog.alarm[5s] = 7s
0x000DC8:
    if !(== self.ctimer 115s) goto 0x000E40
0x000DDC:
    self.l_timer = 7s
    self.home = 1s
    self.type = (choose[]:int32 (var 2s) (var 1s))
    self.fire = 0s
    self.maxfire = 4s
    stog.alarm[5s] = 7s
0x000E40:
    if !(== self.ctimer 132s) goto 0x000EA4
0x000E54:
    self.l_timer = 6s
    self.home = 1s
    self.type = 2s
    self.fire = 0s
    self.maxfire = 4s
    stog.alarm[5s] = 6s
0x000EA4:
    if !(== self.ctimer 156s) goto 0x000F08
0x000EB8:
    self.l_timer = 6s
    self.home = 1s
    self.type = 2s
    self.fire = 0s
    self.maxfire = 4s
    stog.alarm[5s] = 6s
0x000F08:
    if !(== self.ctimer 170s) goto 0x000F6C
0x000F1C:
    self.l_timer = 6s
    self.home = 1s
    self.type = 1s
    self.fire = 0s
    self.maxfire = 10s
    stog.alarm[5s] = 6s
0x000F6C:
    if !(== self.ctimer 200s) goto 0x000FB8
0x000F80:
    call (caster_play[]:int32 (var 0.55d) (var 1s) self.sfx_p)
    self.meter = 1s
0x000FB8:
    if !(== self.ctimer 215s) goto 0x000FE4
0x000FCC:
    self.home = 0s
    self.aaspeed = 90s
0x000FE4:
    if !(>= self.ctimer 215s) goto 0x00100C
0x000FF8:
    push (< self.ctimer 240s)
    goto 0x001010
0x00100C:
    push 0s
0x001010:
    if !pop goto 0x001078
0x001014:
    self.image_angle = (+ self.image_angle self.aaspeed)
    if !(> self.aaspeed 0s) goto 0x001060
0x001044:
    self.aaspeed = (- self.aaspeed 6s)
    goto 0x001078
0x001060:
    self.aaspeed = 0s
    self.ctimer = 255s
0x001078:
    if !(== self.ctimer 255s) goto 0x001098
0x00108C:
    self.home = 1s
0x001098:
    if !(== self.ctimer 257s) goto 0x0010DC
0x0010AC:
    self.sprite_index = 2372s
    self.image_speed = 1s
    self.unhinge = 1s
    self.home = 0s
0x0010DC:
    if !(== self.ctimer 270s) goto 0x00114C
0x0010F0:
    self.metercounter = 7s
    call (caster_play[]:int32 (var 1.1d) (var 1s) self.sfx_l)
    self.blast = 1s
    self.bt = 70s
    self.btimer = 0s
0x00114C:
    if (== self.ctimer 272s) goto 0x0011D8
0x001160:
    if (== self.ctimer 274s) goto 0x0011D8
0x001174:
    if (== self.ctimer 276s) goto 0x0011D8
0x001188:
    if (== self.ctimer 278s) goto 0x0011D8
0x00119C:
    if (== self.ctimer 280s) goto 0x0011D8
0x0011B0:
    if (== self.ctimer 282s) goto 0x0011D8
0x0011C4:
    push (== self.ctimer 284s)
    goto 0x0011DC
0x0011D8:
    push 1s
0x0011DC:
    if !pop goto 0x0012F4
0x0011E0:
    self.jr = (+ self.jr 8s)
    self.i = 0s
    if !(< self.i 24s) goto 0x0012F4
0x001218:
    self.star = (instance_create[]:int32 (var 579s) self.y self.x)
    push 0s
    stog.h_mode* = (int32 self.star)
    push -0.1d
    stog.friction* = (int32 self.star)
    push 8s
    stog.speed* = (int32 self.star)
    push (+ self.jr (* 15s self.i))
    stog.direction* = (int32 self.star)
    push -9000s
    stog.depth* = (int32 self.star)
    self.i = (+ self.i 1s)
    goto 0x001204
0x0012F4:
    if !(>= self.ctimer 310s) goto 0x001384
0x001308:
    pushenv (int32 self.king) 0x001338
0x001318:
    if !(== self.guncon 5s) goto 0x001338
0x00132C:
    self.guncon = 7s
0x001338:
    popenv 0x001318
0x00133C:
    self.image_alpha = (- self.image_alpha 0.1d)
    if !(< self.image_alpha 0.1d) goto 0x001384
0x001378:
    call (instance_destroy[]:int32 )
0x001384:
    exit
