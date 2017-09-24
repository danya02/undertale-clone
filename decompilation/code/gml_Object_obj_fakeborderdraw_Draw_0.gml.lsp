0x000000:
    if !(== self.draedmode 0s) goto 0x00010C
0x000014:
    if !(== self.drawngr 1s) goto 0x00003C
0x000028:
    call (sprite_delete[]:int32 self.gr)
0x00003C:
    self.gr = (sprite_create_from_screen_x[]:int32 (+ (/ (- 761.y 759.y) (double 2s)) 4s) (+ (/ (- 760.x 758.x) (double 2s)) 140s) (var 0s) (var 0s) (+ (- 761.y 759.y) 8s) (+ (- 760.x 758.x) 200s) 759.y (- 758.x 100s))
    self.sprite_index = self.gr
0x00010C:
    self.op = 363s
    call (draw_set_color[]:int32 (var 0s))
    if !(== self.draedmode 0s) goto 0x000200
0x000140:
    if !(< self.con 6s) goto 0x0001A0
0x000154:
    call (draw_rectangle[]:int32 (var 0s) (+ 761.y 8s) (+ 760.x 280s) 759.y (- 758.x 200s))
0x0001A0:
    if !(< self.con 6s) goto 0x000200
0x0001B4:
    push (var 0s)
    push -5s
    call (draw_rectangle[]:int32 (+ 3s:idealborder 5s) (var 640s) -5s 2s:idealborder (var 0s))
0x000200:
    if !(== self.pattern 1s) goto 0x000B24
0x000214:
    if !(== self.moved 0s) goto 0x000254
0x000228:
    push -5s
    self.xx = (- 0s:idealborder 60s)
    self.moved = 1s
0x000254:
    self.yy = 759.y
    if !(== self.con 0s) goto 0x00032C
0x000278:
    self.siner = 0s
    self.factor = 20s
    if !(== self.draedmode 0s) goto 0x00032C
0x0002A4:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.yy (/ self.sprite_height (double 2s))) (+ self.xx (/ self.sprite_width (double 2s))) self.image_index self.sprite_index)
0x00032C:
    if !(>= self.xx -60s) goto 0x000354
0x000340:
    push (== self.con 0s)
    goto 0x000358
0x000354:
    push 0s
0x000358:
    if !pop goto 0x000374
0x00035C:
    self.xx = (- self.xx 10s)
0x000374:
    if !(<= self.xx -60s) goto 0x00039C
0x000388:
    push (== self.con 0s)
    goto 0x0003A0
0x00039C:
    push 0s
0x0003A0:
    if !pop goto 0x0003B0
0x0003A4:
    self.con = 1s
0x0003B0:
    if !(== self.con 2s) goto 0x000424
0x0003C4:
    global.border = 23s
    stog.alarm[4s] = 60s
    call (instance_create[]:int32 (var 347s) (- 761.y 122s) (+ 760.x 10s))
    self.con = 3s
0x000424:
    if !(== self.con 3s) goto 0x0004E0
0x000438:
    self.siner = 0s
    if !(== self.draedmode 0s) goto 0x0004E0
0x000458:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.yy (/ self.sprite_height (double 2s))) (+ self.xx (/ self.sprite_width (double 2s))) self.image_index self.sprite_index)
0x0004E0:
    if !(== self.con 4s) goto 0x000644
0x0004F4:
    global.border = 22s
    [obj_purpleheart].ttype = 3s
    self.con = 5s
    self.gen = (instance_create[]:int32 (var 352s) (var 0s) (var 0s))
    if !(bool (instance_exists[]:int32 self.gen)) goto 0x00062C
0x000558:
    push self.dmg
    stog.dmg* = (int32 self.gen)
    if !(== 360.turnamt 5s) goto 0x0005A0
0x000588:
    push 13s
    stog.type* = (int32 self.gen)
0x0005A0:
    if !(== 360.turnamt 10s) goto 0x0005D8
0x0005B4:
    push 14s
    stog.type* = (int32 self.gen)
    [obj_purpleheart].yadd2 = 4s
0x0005D8:
    if !(== 360.turnamt 16s) goto 0x000610
0x0005EC:
    push 16s
    stog.type* = (int32 self.gen)
    [obj_purpleheart].yadd2 = 5s
0x000610:
    push 60s
    push (int32 self.gen)
    stog.alarm[] = 0s
0x00062C:
    self.siner = 0s
    self.rotfactor = 5s
0x000644:
    if !(== self.con 5s) goto 0x000810
0x000658:
    if !(< 363.yadd 5s) goto 0x00068C
0x00066C:
    [obj_purpleheart].yadd = (+ 363.yadd 0.01d)
0x00068C:
    self.siner = (+ self.siner 1s)
    if !(== self.draedmode 0s) goto 0x000760
0x0006B8:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (sin[]:int32 (/ self.siner (double 10s))) self.rotfactor) (var 1s) (var 1s) (+ self.yy (/ self.sprite_height (double 2s))) (+ self.xx (/ self.sprite_width (double 2s))) self.image_index self.sprite_index)
0x000760:
    if !(< global.turntimer 80s) goto 0x000788
0x000774:
    push (> self.rotfactor 0s)
    goto 0x00078C
0x000788:
    push 0s
0x00078C:
    if !pop goto 0x000810
0x000790:
    self.rotfactor = (- self.rotfactor 0.1d)
    if !(== self.rotfactor 0s) goto 0x0007D8
0x0007C4:
    push (== 360.turnamt 16s)
    goto 0x0007DC
0x0007D8:
    push 0s
0x0007DC:
    if !pop goto 0x000810
0x0007E0:
    global.turntimer = 370s
    self.con = 6s
    pushenv 352s 0x00080C
0x000800:
    call (instance_destroy[]:int32 )
0x00080C:
    popenv 0x000800
0x000810:
    if !(== self.con 6s) goto 0x0008B8
0x000824:
    global.border = 21s
    [obj_heart].x = 363.x
    [obj_heart].y = 363.y
    pushenv 363s 0x000864
0x000858:
    call (instance_destroy[]:int32 )
0x000864:
    popenv 0x000858
0x000868:
    pushenv 349s 0x00087C
0x000870:
    self.vspeed = 4s
0x00087C:
    popenv 0x000870
0x000880:
    pushenv 354s 0x000894
0x000888:
    call (instance_destroy[]:int32 )
0x000894:
    popenv 0x000888
0x000898:
    self.con = 7s
    stog.alarm[4s] = 40s
0x0008B8:
    if (== self.con 7s) goto 0x0008E0
0x0008CC:
    push (== self.con 8s)
    goto 0x0008E4
0x0008E0:
    push 1s
0x0008E4:
    if !pop goto 0x000920
0x0008E8:
    if !(< 743.y (+ 759.y 20s)) goto 0x000920
0x000908:
    [obj_heart].y = (+ 759.y 20s)
0x000920:
    if !(== self.con 8s) goto 0x000964
0x000934:
    pushenv 349s 0x000948
0x00093C:
    call (instance_destroy[]:int32 )
0x000948:
    popenv 0x00093C
0x00094C:
    [obj_spiderb].con = 50s
    call (instance_destroy[]:int32 )
0x000964:
    if !(== self.con 1s) goto 0x000B24
0x000978:
    self.xx = (+ self.xx 1s)
    if !(>= self.xx 140s) goto 0x0009C0
0x0009A4:
    push (== (instance_exists[]:int32 (var 352s)) 1s)
    goto 0x0009C4
0x0009C0:
    push 0s
0x0009C4:
    if !pop goto 0x0009E0
0x0009C8:
    pushenv 352s 0x0009DC
0x0009D0:
    call (instance_destroy[]:int32 )
0x0009DC:
    popenv 0x0009D0
0x0009E0:
    if !(== self.draedmode 0s) goto 0x000AA8
0x0009F4:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1s) (+ (+ self.yy (/ self.sprite_height (double 2s))) (* (sin[]:int32 (/ self.siner (double 6s))) self.factor)) (+ self.xx (/ self.sprite_width (double 2s))) self.image_index self.sprite_index)
0x000AA8:
    self.siner = (+ self.siner 1s)
    if !(>= self.xx 160s) goto 0x000B24
0x000AD4:
    self.xx = 160s
    self.factor = (- self.factor 2s)
    if !(<= self.factor 1s) goto 0x000B24
0x000B0C:
    self.factor = 0s
    self.con = 2s
0x000B24:
    if !(== self.pattern 2s) goto 0x000C14
0x000B38:
    self.siner = (+ self.siner 1s)
    if !(== self.draedmode 0s) goto 0x000C14
0x000B64:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (+ (* (sin[]:int32 (/ self.siner (double 10s))) 5s) self.rot) (var 1s) (var 1s) (+ self.yy (/ self.sprite_height (double 2s))) (+ self.xx (/ self.sprite_width (double 2s))) self.image_index self.sprite_index)
0x000C14:
    self.drawngr = 1s
    if !(!= global.mnfight 2s) goto 0x000C40
0x000C34:
    call (instance_destroy[]:int32 )
0x000C40:
    exit
