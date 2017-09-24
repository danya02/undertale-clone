0x000000:
    if !(== self.desperate 0s) goto 0x000028
0x000014:
    push (== self.acon 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000170
0x000030:
    if !(== self.frozen 0s) goto 0x000064
0x000044:
    self.siner = (+ self.siner 0.8d)
0x000064:
    self.growth = (+ 1s (* (cos[]:int32 (/ self.siner (double 6s))) 0.03d))
    self.ssx = (* (* (sin[]:int32 (/ self.siner (double 3s))) 4s) self.image_xscale)
    self.ssy = (* (cos[]:int32 (/ self.siner (double 3s))) 4s)
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) self.growth self.image_xscale (+ self.y self.ssy) (- self.x self.ssx) self.image_index self.sprite_index)
0x000170:
    if !(== self.desperate 1s) goto 0x000198
0x000184:
    push (== self.acon 0s)
    goto 0x00019C
0x000198:
    push 0s
0x00019C:
    if !pop goto 0x0002E8
0x0001A0:
    if !(== self.frozen 0s) goto 0x0001D4
0x0001B4:
    self.siner = (+ self.siner 1.2d)
0x0001D4:
    self.growth = (+ 1s (* (cos[]:int32 (/ self.siner (double 6s))) 0.03d))
    self.ssx = (* (* (sin[]:int32 (/ self.siner (double 3s))) 5s) self.image_xscale)
    self.ssy = (* (cos[]:int32 (/ self.siner (double 3s))) 8s)
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) self.growth self.image_xscale (+ (+ self.y self.ssy) 2s) (- self.x self.ssx) self.image_index self.sprite_index)
0x0002E8:
    self.xr = (- self.image_xscale)
    if !(== self.acon 2s) goto 0x0003EC
0x000310:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle self.image_yscale self.image_xscale self.y self.x self.reach (var 2233s))
    if !(> self.reach 0s) goto 0x000390
0x000378:
    self.reach = (- self.reach 1s)
0x000390:
    if !(<= self.reach 0s) goto 0x0003EC
0x0003A4:
    self.acon = 0s
    self.reach2 = 0s
    self.reach3 = 0s
    self.reach = 0s
    self.acon2 = 0s
    self.made = 0s
0x0003EC:
    if !(== self.acon 1s) goto 0x000720
0x000400:
    if (== self.acon2 1s) goto 0x000428
0x000414:
    push (== self.acon2 3s)
    goto 0x00042C
0x000428:
    push 1s
0x00042C:
    if !pop goto 0x0004CC
0x000430:
    if !(< self.reach2 13s) goto 0x00045C
0x000444:
    self.reach2 = (+ self.reach2 2s)
0x00045C:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle self.image_yscale self.image_xscale (+ self.y 195s) (+ self.x (* self.xr 36s)) self.reach2 (var 2232s))
0x0004CC:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle self.image_yscale self.image_xscale self.y self.x self.reach (var 2233s))
    if !(< self.reach 11s) goto 0x00054C
0x000534:
    self.reach = (+ self.reach 2s)
0x00054C:
    if !(== self.reach 12s) goto 0x000570
0x000560:
    self.reach = 11s
    goto 0x000590
0x000570:
    if !(== self.acon2 0s) goto 0x000590
0x000584:
    self.acon2 = 1s
0x000590:
    if !(== self.acon2 1s) goto 0x0006D4
0x0005A4:
    if !(== self.reach2 14s) goto 0x0005C4
0x0005B8:
    self.reach2 = 13s
0x0005C4:
    if !(== self.reach2 13s) goto 0x0005EC
0x0005D8:
    push (== self.made 0s)
    goto 0x0005F0
0x0005EC:
    push 0s
0x0005F0:
    if !pop goto 0x0006D4
0x0005F4:
    self.made = 1s
    self.venu = (instance_create[]:int32 (var 1652s) (+ self.y 138s) (- self.x (* 135s self.xr)))
    push self.id
    stog.boss* = (int32 self.venu)
    if !(> self.image_xscale 0s) goto 0x0006A0
0x000674:
    pushenv (int32 self.venu) 0x00069C
0x000684:
    self.sider = 1s
    self.image_xscale = -1s
0x00069C:
    popenv 0x000684
0x0006A0:
    if !(< self.image_xscale 0s) goto 0x0006D4
0x0006B4:
    pushenv (int32 self.venu) 0x0006D0
0x0006C4:
    self.sider = 0s
0x0006D0:
    popenv 0x0006C4
0x0006D4:
    if !(== self.acon2 3s) goto 0x000700
0x0006E8:
    self.reach2 = (+ self.reach2 1s)
0x000700:
    if !(>= self.reach2 39s) goto 0x000720
0x000714:
    self.acon = 2s
0x000720:
    exit
