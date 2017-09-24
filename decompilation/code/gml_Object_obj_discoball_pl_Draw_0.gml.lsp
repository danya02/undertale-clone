0x000000:
    self.soundtimer = (- self.soundtimer 1s)
    self.swaptimer = (- self.swaptimer 1s)
    if !(< self.swaptimer 0s) goto 0x000050
0x000044:
    self.sprite_index = 531s
0x000050:
    if !(== self.active 1s) goto 0x000694
0x000064:
    self.i = 0s
    if !(< self.i self.maxlaser) goto 0x000608
0x000088:
    self.xx = (+ (+ self.x (lengthdir_x[]:int32 (+ self.rot (* self.laserdist self.i)) (var 160s))) 20s)
    push self.xx
    if !(> -5s 1s:idealborder) goto 0x00010C
0x0000F4:
    push -5s
    self.xx = 1s:idealborder
0x00010C:
    push self.xx
    if !(< -5s 0s:idealborder) goto 0x000144
0x00012C:
    push -5s
    self.xx = 0s:idealborder
0x000144:
    self.yy = (+ (+ self.y (lengthdir_y[]:int32 (+ self.rot (* self.laserdist self.i)) (var 160s))) 30s)
    push self.yy
    if !(> -5s 3s:idealborder) goto 0x0001C8
0x0001B0:
    push -5s
    self.yy = 3s:idealborder
0x0001C8:
    push self.yy
    if !(< -5s 2s:idealborder) goto 0x000200
0x0001E8:
    push -5s
    self.yy = 2s:idealborder
0x000200:
    push -1s
    if !(== (int32 self.i):laser 1s) goto 0x000288
0x000224:
    if !(== self.type 0s) goto 0x000260
0x000238:
    call (draw_set_color[]:int32 (var 16754964))
    self.bb = 1s
    goto 0x000284
0x000260:
    call (draw_set_color[]:int32 (var 16777215))
    self.bb = 0s
0x000284:
    goto 0x0002E8
0x000288:
    if !(== self.type 0s) goto 0x0002C4
0x00029C:
    call (draw_set_color[]:int32 (var 16777215))
    self.bb = 0s
    goto 0x0002E8
0x0002C4:
    call (draw_set_color[]:int32 (var 16754964))
    self.bb = 1s
0x0002E8:
    push self.yy
    if !(> -5s 2s:idealborder) goto 0x000460
0x000308:
    call (draw_line_width[]:int32 (var 3s) self.yy self.xx (+ self.y 30s) (+ self.x 20s))
    if !(bool (collision_line[]:int32 (var 1s) (var 1s) (var 743s) self.yy self.xx (+ self.y 30s) (+ self.x 20s))) goto 0x00045C
0x0003A4:
    if !(== self.bb 0s) goto 0x0003CC
0x0003B8:
    call (event_user[]:int32 (var 11s))
0x0003CC:
    if !(== self.bb 1s) goto 0x00045C
0x0003E0:
    if (> (abs[]:int32 (- 743.xprevious 743.x)) 0.01d) goto 0x000440
0x000410:
    push (> (abs[]:int32 (- 743.yprevious 743.y)) 0.01d)
    goto 0x000444
0x000440:
    push 1s
0x000444:
    if !pop goto 0x00045C
0x000448:
    call (event_user[]:int32 (var 11s))
0x00045C:
    goto 0x0005EC
0x000460:
    if !(> self.laserno 0s) goto 0x0005EC
0x000474:
    stog.laser[(int32 self.i)] = (choose[]:int32 (var 3s) (var 2s) (var 1s))
    if !(> self.i 0s) goto 0x00054C
0x0004C0:
    push -1s
    if !(== (int32 self.i):laser 3s) goto 0x00054C
0x0004E4:
    push -1s
    if !(== (int32 (- self.i 1s)):laser 1s) goto 0x000530
0x000510:
    stog.laser[(int32 self.i)] = 2s
    goto 0x00054C
0x000530:
    stog.laser[(int32 self.i)] = 1s
0x00054C:
    if !(== self.i 0s) goto 0x0005EC
0x000560:
    push -1s
    if !(== (int32 self.i):laser 3s) goto 0x0005EC
0x000584:
    push -1s
    if !(== (int32 (- self.maxlaser 1s)):laser 1s) goto 0x0005D0
0x0005B0:
    stog.laser[(int32 self.i)] = 2s
    goto 0x0005EC
0x0005D0:
    stog.laser[(int32 self.i)] = 1s
0x0005EC:
    self.i = (+ self.i 1s)
    goto 0x000070
0x000608:
    self.rottimer = (- self.rottimer 1s)
    if !(< self.rottimer 0s) goto 0x000650
0x000634:
    self.rot = (- self.rot self.rotspeed)
0x000650:
    if !(< self.rot -180s) goto 0x000694
0x000664:
    self.laserno = (+ self.laserno 1s)
    self.rot = (+ self.rot 360s)
0x000694:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
0x0006C0:
    exit
