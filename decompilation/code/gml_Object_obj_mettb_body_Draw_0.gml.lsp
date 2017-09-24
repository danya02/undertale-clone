0x000000:
    if !(== self.noleg 0s) goto 0x0003CC
0x000014:
    if !(== self.legr 0s) goto 0x000058
0x000028:
    self.legrsprite = 498s
    self.xoffr = -14s
    self.yoffr = 10s
    self.legrh = 36s
0x000058:
    if !(== self.legr 1s) goto 0x00009C
0x00006C:
    self.legrsprite = 499s
    self.xoffr = -16s
    self.yoffr = 6s
    self.legrh = 8s
0x00009C:
    if !(== self.legr 2s) goto 0x0000E0
0x0000B0:
    self.legrsprite = 506s
    self.xoffr = -10s
    self.yoffr = 14s
    self.legrh = 60s
0x0000E0:
    if !(== self.legr 3s) goto 0x000124
0x0000F4:
    self.legrsprite = 504s
    self.xoffr = -10s
    self.yoffr = 14s
    self.legrh = 30s
0x000124:
    if !(== self.legr 4s) goto 0x000168
0x000138:
    self.legrsprite = 505s
    self.xoffr = -18s
    self.yoffr = 2s
    self.legrh = 42s
0x000168:
    if !(== self.legr 9s) goto 0x0001AC
0x00017C:
    self.legrsprite = 502s
    self.xoffr = 20s
    self.yoffr = 6s
    self.legrh = 8s
0x0001AC:
    if !(== self.legr 10s) goto 0x0001F0
0x0001C0:
    self.legrsprite = 503s
    self.xoffr = 15s
    self.yoffr = 2s
    self.legrh = 0s
0x0001F0:
    if !(== self.legl 0s) goto 0x000234
0x000204:
    self.leglsprite = 498s
    self.xoffl = -14s
    self.yoffl = 10s
    self.leglh = 36s
0x000234:
    if !(== self.legl 1s) goto 0x000278
0x000248:
    self.leglsprite = 499s
    self.xoffl = -16s
    self.yoffl = 6s
    self.leglh = 8s
0x000278:
    if !(== self.legl 2s) goto 0x0002BC
0x00028C:
    self.leglsprite = 506s
    self.xoffl = -10s
    self.yoffl = 14s
    self.leglh = 60s
0x0002BC:
    if !(== self.legl 3s) goto 0x000300
0x0002D0:
    self.leglsprite = 504s
    self.xoffl = -10s
    self.yoffl = 14s
    self.leglh = 30s
0x000300:
    if !(== self.legl 4s) goto 0x000344
0x000314:
    self.leglsprite = 505s
    self.xoffl = -18s
    self.yoffl = 2s
    self.leglh = 42s
0x000344:
    if !(== self.legl 9s) goto 0x000388
0x000358:
    self.leglsprite = 500s
    self.xoffl = -5s
    self.yoffl = 2s
    self.leglh = 6s
0x000388:
    if !(== self.legl 10s) goto 0x0003CC
0x00039C:
    self.leglsprite = 501s
    self.xoffl = 0s
    self.yoffl = 5s
    self.leglh = 2s
0x0003CC:
    if !(== self.arml 0s) goto 0x0003EC
0x0003E0:
    self.armlsprite = 507s
0x0003EC:
    if !(== self.arml 1s) goto 0x00040C
0x000400:
    self.armlsprite = 508s
0x00040C:
    if !(== self.arml 2s) goto 0x00042C
0x000420:
    self.armlsprite = 509s
0x00042C:
    if !(== self.arml 3s) goto 0x00044C
0x000440:
    self.armlsprite = 510s
0x00044C:
    if !(== self.arml 4s) goto 0x00046C
0x000460:
    self.armlsprite = 511s
0x00046C:
    if !(== self.arml 5s) goto 0x00048C
0x000480:
    self.armlsprite = 512s
0x00048C:
    if !(== self.arml 6s) goto 0x0004AC
0x0004A0:
    self.armlsprite = 513s
0x0004AC:
    if !(== self.arml 7s) goto 0x0004CC
0x0004C0:
    self.armlsprite = 514s
0x0004CC:
    if !(== self.armr 0s) goto 0x0004EC
0x0004E0:
    self.armrsprite = 507s
0x0004EC:
    if !(== self.armr 1s) goto 0x00050C
0x000500:
    self.armrsprite = 508s
0x00050C:
    if !(== self.armr 2s) goto 0x00052C
0x000520:
    self.armrsprite = 509s
0x00052C:
    if !(== self.armr 3s) goto 0x00054C
0x000540:
    self.armrsprite = 510s
0x00054C:
    if !(== self.armr 4s) goto 0x00056C
0x000560:
    self.armrsprite = 511s
0x00056C:
    if !(== self.armr 5s) goto 0x00058C
0x000580:
    self.armrsprite = 512s
0x00058C:
    if !(== self.armr 6s) goto 0x0005AC
0x0005A0:
    self.armrsprite = 513s
0x0005AC:
    if !(== self.armr 7s) goto 0x0005CC
0x0005C0:
    self.armrsprite = 514s
0x0005CC:
    if !(!= self.legl 9s) goto 0x00061C
0x0005E0:
    if !(!= self.legr 9s) goto 0x00061C
0x0005F4:
    if !(!= self.legl 10s) goto 0x00061C
0x000608:
    push (!= self.legr 10s)
    goto 0x000620
0x00061C:
    push 0s
0x000620:
    if !pop goto 0x000780
0x000624:
    self.offangle = 0s
    if (> self.leglh 10s) goto 0x000674
0x000644:
    if !(> self.legrh 10s) goto 0x00066C
0x000658:
    push (== self.sineron 1s)
    goto 0x000670
0x00066C:
    push 0s
0x000670:
    goto 0x000678
0x000674:
    push 1s
0x000678:
    if !pop goto 0x000694
0x00067C:
    self.siner = (+ self.siner 1s)
0x000694:
    if !(== self.sineron 1s) goto 0x0006D8
0x0006A8:
    self.rsin = (+ self.rsin 1s)
    self.lsin = (+ self.lsin 1s)
0x0006D8:
    if !(> self.leglh self.legrh) goto 0x000718
0x0006F0:
    self.legh = (* self.leglh 2s)
    self.lsin = 0s
    goto 0x00073C
0x000718:
    self.legh = (* self.legrh 2s)
    self.rsin = 0s
0x00073C:
    if !(< (abs[]:int32 (- self.leglh self.legrh)) 5s) goto 0x00077C
0x000764:
    self.lsin = 0s
    self.rsin = 0s
0x00077C:
    goto 0x000854
0x000780:
    if !(> self.leglh self.legrh) goto 0x0007B4
0x000798:
    self.legh = (* self.leglh 2s)
    goto 0x0007CC
0x0007B4:
    self.legh = (* self.legrh 2s)
0x0007CC:
    if !(== self.legl 10s) goto 0x0007EC
0x0007E0:
    self.lsin = 0s
0x0007EC:
    if !(== self.sineron 1s) goto 0x000848
0x000800:
    self.siner = (+ self.siner 1s)
    self.rsin = (+ self.rsin 1s)
    self.lsin = (+ self.lsin 1s)
0x000848:
    self.offangle = 10s
0x000854:
    self.ds1 = (- (random[]:int32 (* self.dsf 2s)) self.dsf)
    self.ds2 = (- (random[]:int32 (* self.dsf 2s)) self.dsf)
    if !(== self.noleg 0s) goto 0x000ADC
0x0008C0:
    call (draw_sprite_ext[]:int32 self.myalpha self.myblend (- (* (sin[]:int32 (/ self.rsin (double 7s))) 10s) self.offangle) (- 2s (* (sin[]:int32 (/ self.siner 3.5d)) 0.05d)) (var 2s) (- (- (+ (+ self.y 120s) self.yoffr) self.legh) (* (sin[]:int32 (/ self.siner (double 2s))) 0.05d)) (+ (+ self.x 90s) self.xoffr) (var 0s) self.legrsprite)
    call (draw_sprite_ext[]:int32 self.myalpha self.myblend (* (sin[]:int32 (/ self.lsin (double 7s))) 10s) (- 2s (* (sin[]:int32 (/ self.siner 3.5d)) 0.05d)) (var -2s) (- (- (+ (+ self.y 120s) self.yoffl) self.legh) (* (sin[]:int32 (/ self.siner (double 2s))) 0.05d)) (- (- (+ self.x 90s) self.xoffl) 32s) (var 0s) self.leglsprite)
0x000ADC:
    if !(== self.noarm 0s) goto 0x000C98
0x000AF0:
    if !(!= self.arml 5s) goto 0x000BC4
0x000B04:
    call (draw_sprite_ext[]:int32 self.myalpha self.myblend (var 0s) (var 2s) (var 2s) (+ (+ (- self.y self.legh) 80s) (* (cos[]:int32 (/ self.siner 3.5d)) 2s)) (+ (+ self.x 36s) (sin[]:int32 (/ self.siner 3.5d))) (var 0s) self.armlsprite)
0x000BC4:
    if !(!= self.armr 5s) goto 0x000C98
0x000BD8:
    call (draw_sprite_ext[]:int32 self.myalpha self.myblend (var 0s) (var 2s) (var -2s) (+ (+ (- self.y self.legh) 80s) (* (cos[]:int32 (/ self.siner 3.5d)) 2s)) (+ (+ self.x 110s) (sin[]:int32 (/ self.siner 3.5d))) (var 0s) self.armrsprite)
0x000C98:
    if !(== self.bodyopen 1s) goto 0x000CE4
0x000CAC:
    if !(< self.bodyimg 5s) goto 0x000CE0
0x000CC0:
    self.bodyimg = (+ self.bodyimg 0.25d)
0x000CE0:
    goto 0x000D18
0x000CE4:
    if !(> self.bodyimg 0s) goto 0x000D18
0x000CF8:
    self.bodyimg = (- self.bodyimg 0.25d)
0x000D18:
    call (draw_sprite_ext[]:int32 self.myalpha self.myblend (var 0s) (var 2s) (var 2s) (+ (+ (+ (- self.y self.legh) 134s) (* (cos[]:int32 (/ self.siner 3.5d)) 2s)) self.ds2) (+ (+ (+ self.x 72s) (sin[]:int32 (/ self.siner 3.5d))) self.ds1) self.bodyimg (var 557s))
    if !(== (instance_exists[]:int32 (var 420s)) 0s) goto 0x000E3C
0x000E0C:
    if !(== (instance_exists[]:int32 (var 449s)) 0s) goto 0x000E3C
0x000E28:
    push (== self.heartdead 0s)
    goto 0x000E40
0x000E3C:
    push 0s
0x000E40:
    if !pop goto 0x000F2C
0x000E44:
    call (draw_sprite_ext[]:int32 self.myalpha self.myblend (var 0s) (var 2s) (var 2s) (+ (+ (+ (+ (- self.y self.legh) 134s) (* (cos[]:int32 (/ self.siner 3.5d)) 2s)) 108s) self.ds2) (+ (+ (+ (+ self.x 72s) (sin[]:int32 (/ self.siner 3.5d))) 66s) self.ds1) (var 0s) (var 558s))
0x000F2C:
    if !(== self.endface 0s) goto 0x00126C
0x000F40:
    if !(== self.hurt 0s) goto 0x000F68
0x000F54:
    push (== self.face_set 0s)
    goto 0x000F6C
0x000F68:
    push 0s
0x000F6C:
    if !pop goto 0x00100C
0x000F70:
    call (draw_sprite_ext[]:int32 self.myalpha self.myblend (var 0s) (var 2s) (var 2s) (+ (- (+ self.y 40s) self.legh) (* (cos[]:int32 (/ self.siner 3.5d)) 3s)) (+ self.x 68s) self.faceno (var 494s))
0x00100C:
    if !(== self.hurt 0s) goto 0x001034
0x001020:
    push (== self.face_set 1s)
    goto 0x001038
0x001034:
    push 0s
0x001038:
    if !pop goto 0x0010F0
0x00103C:
    call (draw_sprite_ext[]:int32 self.myalpha self.myblend (var 0s) (var 2s) (var 2s) (- (+ (- (+ self.y 40s) self.legh) (* (cos[]:int32 (/ self.siner 3.5d)) 3s)) self.ds2) (- (+ self.x 68s) self.ds1) global.faceemotion (var 497s))
0x0010F0:
    if !(== self.hurt 1s) goto 0x0011A0
0x001104:
    call (draw_sprite_ext[]:int32 self.myalpha self.myblend (var 0s) (var 2s) (var 2s) (+ (- (+ self.y 40s) self.legh) (* (cos[]:int32 (/ self.siner 3.5d)) 3s)) (+ self.x 68s) self.hurtface (var 496s))
0x0011A0:
    if !(== self.hurt 2s) goto 0x001268
0x0011B4:
    call (draw_sprite_ext[]:int32 self.myalpha self.myblend (var 0s) (var 2s) (var 2s) (- (+ (- (+ self.y 40s) self.legh) (* (cos[]:int32 (/ self.siner 3.5d)) 3s)) self.ds2) (- (+ self.x 68s) self.ds1) global.faceemotion (var 497s))
0x001268:
    goto 0x001308
0x00126C:
    call (draw_sprite_ext[]:int32 self.myalpha self.myblend (var 0s) (var 2s) (var 2s) (+ (- (+ self.y 40s) self.legh) (* (cos[]:int32 (/ self.siner 3.5d)) 3s)) (+ self.x 68s) global.faceemotion (var 495s))
0x001308:
    if !(== self.noarm 0s) goto 0x0014C4
0x00131C:
    if !(== self.arml 5s) goto 0x0013F0
0x001330:
    call (draw_sprite_ext[]:int32 self.myalpha self.myblend (var 0s) (var 2s) (var 2s) (+ (+ (- self.y self.legh) 80s) (* (cos[]:int32 (/ self.siner 3.5d)) 2s)) (+ (+ self.x 42s) (sin[]:int32 (/ self.siner 3.5d))) (var 0s) self.armlsprite)
0x0013F0:
    if !(== self.armr 5s) goto 0x0014C4
0x001404:
    call (draw_sprite_ext[]:int32 self.myalpha self.myblend (var 0s) (var 2s) (var -2s) (+ (+ (- self.y self.legh) 80s) (* (cos[]:int32 (/ self.siner 3.5d)) 2s)) (+ (+ self.x 110s) (sin[]:int32 (/ self.siner 3.5d))) (var 0s) self.armrsprite)
0x0014C4:
    if !(== self.pause 1s) goto 0x001518
0x0014D8:
    if !(== self.hurt 0s) goto 0x001518
0x0014EC:
    self.hurt = 1s
    self.hurtface = (choose[]:int32 (var 1s) (var 0s))
0x001518:
    if !(== self.pause 2s) goto 0x001558
0x00152C:
    if !(== self.hurt 0s) goto 0x001558
0x001540:
    self.hurt = 1s
    self.hurtface = 2s
0x001558:
    if !(== self.pause 0s) goto 0x001578
0x00156C:
    self.hurt = 0s
0x001578:
    if !(== self.sineron 1s) goto 0x001660
0x00158C:
    self.y = (- 759.y 136s)
    push -5s
    if !(< 2s:idealborder 250s) goto 0x001620
0x0015C0:
    if !(== self.legmode 0s) goto 0x00161C
0x0015D4:
    self.depth = 0s
    self.legmode = 1s
    self.legl = (choose[]:int32 (var 10s) (var 9s))
    self.legr = self.legl
0x00161C:
    goto 0x001660
0x001620:
    if !(== self.legmode 1s) goto 0x001660
0x001634:
    self.depth = 10s
    self.legmode = 0s
    call (event_user[]:int32 (var 0s))
0x001660:
    if !(== self.fadewhite 1s) goto 0x001834
0x001674:
    self.depth = -999999
    self.whiteval = (+ self.whiteval 0.2d)
    call (draw_set_alpha[]:int32 self.whiteval)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    if !(> self.whiteval 10s) goto 0x001788
0x001718:
    call (draw_set_alpha[]:int32 (+ -1s (/ self.whiteval (double 10s))))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
0x001788:
    if !(== self.whiteval 10s) goto 0x0017B8
0x00179C:
    push -5s
    push (== 425s:flag 1s)
    goto 0x0017BC
0x0017B8:
    push 0s
0x0017BC:
    if !pop goto 0x0017D4
0x0017C0:
    call (snd_play[]:int32 (var 91s))
0x0017D4:
    call (draw_set_alpha[]:int32 (var 1s))
    if !(>= self.whiteval 44s) goto 0x001834
0x0017FC:
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    call (room_goto[]:int32 global.currentroom)
0x001834:
    if !(== self.noleg 1s) goto 0x0018FC
0x001848:
    if !(> self.legrh 6s) goto 0x001878
0x00185C:
    self.legrh = (- self.legrh 4s)
    goto 0x001884
0x001878:
    self.legrh = 6s
0x001884:
    if !(> self.leglh 6s) goto 0x0018B4
0x001898:
    self.leglh = (- self.leglh 4s)
    goto 0x0018C0
0x0018B4:
    self.leglh = 6s
0x0018C0:
    if !(> self.legh 6s) goto 0x0018F0
0x0018D4:
    self.legh = (- self.legh 4s)
    goto 0x0018FC
0x0018F0:
    self.legh = 6s
0x0018FC:
    exit
