0x000000:
    self.siner = (+ self.siner 1s)
    self.cary = (sin[]:int32 (/ self.siner (double 2s)))
    push -1s
    stog.background_x[(- 1s:background_x 0.25d)] = 1s
    push -1s
    stog.background_x[(- 0s:background_x 0.1d)] = 0s
    call (draw_sprite[]:int32 (+ (+ self.y 8s) self.cary) (- self.x 20s) self.image_index (var 2445s))
    call (draw_sprite[]:int32 (+ self.y 8s) (- self.x 20s) (floor[]:int32 (/ self.siner (double 2s))) (var 2443s))
    call (draw_sprite_part[]:int32 self.y self.x (var 34s) self.sprite_width (var 0s) (var 0s) (floor[]:int32 self.image_index) self.sprite_index)
    call (draw_sprite[]:int32 (+ self.y 8s) (- self.x 20s) (floor[]:int32 (/ self.siner (double 2s))) (var 2444s))
    call (draw_sprite[]:int32 (+ (+ self.y 8s) self.cary) (- self.x 20s) self.image_index (var 2442s))
    if !(< self.timer 5s) goto 0x000284
0x00022C:
    push -1s
    if !(> 0s:view_yview 0s) goto 0x000270
0x000248:
    push -1s
    stog.view_yview[(- 0s:view_yview 3s)] = 0s
    goto 0x000284
0x000270:
    stog.view_yview[0s] = 0s
0x000284:
    self.bgx = (- self.bgx 4s)
    call (tile_layer_shift[]:int32 (var 0s) (var -4s) (var 1000000))
    if !(<= self.bgx -320s) goto 0x000318
0x0002D8:
    call (tile_layer_shift[]:int32 (var 0s) (var 320s) (var 1000000))
    self.bgx = (+ self.bgx 320s)
0x000318:
    if !(>= self.x 0s) goto 0x000340
0x00032C:
    push (== self.td 0s)
    goto 0x000344
0x000340:
    push 0s
0x000344:
    if !pop goto 0x0003B4
0x000348:
    self.t1 = (instance_create[]:int32 (var 1689s) (var 150s) (var 20s))
    push "PAPYRUS"
    stog.text* = (int32 self.t1)
    push "by Toby&Temmie"
    stog.text2* = (int32 self.t1)
    self.td = 1s
0x0003B4:
    if !(>= self.x self.xstart) goto 0x0003E0
0x0003CC:
    push (< self.timer 170s)
    goto 0x0003E4
0x0003E0:
    push 0s
0x0003E4:
    if !pop goto 0x000404
0x0003E8:
    self.x = self.xstart
    self.hspeed = 0s
0x000404:
    if !(> (int32 self.sans):x 0s) goto 0x000438
0x000424:
    push (== self.td 1s)
    goto 0x00043C
0x000438:
    push 0s
0x00043C:
    if !pop goto 0x0004AC
0x000440:
    self.t2 = (instance_create[]:int32 (var 1689s) (var 150s) (var 180s))
    push "SANS"
    stog.text* = (int32 self.t2)
    push "by Toby"
    stog.text2* = (int32 self.t2)
    self.td = 2s
0x0004AC:
    if !(>= (int32 self.sans):x self.x) goto 0x000548
0x0004D0:
    push 2448s
    stog.sprite_index* = (int32 self.sans)
    if !(< self.timer 60s) goto 0x000518
0x0004FC:
    push 0s
    stog.hspeed* = (int32 self.sans)
    goto 0x000530
0x000518:
    push 2s
    stog.hspeed* = (int32 self.sans)
0x000530:
    self.timer = (+ self.timer 1s)
0x000548:
    if !(> (int32 self.sans):x (+ self.x 40s)) goto 0x000694
0x000574:
    if !(== self.td 2s) goto 0x000624
0x000588:
    push 1s
    stog.fader* = (int32 self.t1)
    push 1s
    stog.fader* = (int32 self.t2)
    self.t3 = (instance_create[]:int32 (var 1689s) (var 150s) (var 20s))
    push "SPECIAL INSPIRATION"
    stog.text* = (int32 self.t3)
    push "JN Wiedle"
    stog.text2* = (int32 self.t3)
    self.td = 3s
0x000624:
    push 2447s
    stog.sprite_index* = (int32 self.sans)
    if !(> (int32 self.sans):y 60s) goto 0x000688
0x00065C:
    stog.y* = (- (int32 self.sans):y 3s)
    goto 0x000694
0x000688:
    push (int32 self.sans)
    self.sprite_index = 1308s
0x000694:
    if !(== self.timer 200s) goto 0x0006D4
0x0006A8:
    self.gravity_direction = 355s
    self.gravity = 0.3d
    self.hspeed = -3s
0x0006D4:
    if !(> self.timer 200s) goto 0x000700
0x0006E8:
    self.siner = (+ self.siner 1s)
0x000700:
    if !(> self.timer 240s) goto 0x00074C
0x000714:
    if !(== self.td 3s) goto 0x00074C
0x000728:
    push 1s
    stog.fader* = (int32 self.t3)
    self.td = 4s
0x00074C:
    if !(>= self.timer 260s) goto 0x0007C0
0x000760:
    push -1s
    stog.view_yview[(+ 0s:view_yview 4s)] = 0s
    push -1s
    if !(>= 0s:view_yview 200s) goto 0x0007C0
0x0007A0:
    global.cast_type = 1s
    call (room_goto[]:int32 (var 278s))
0x0007C0:
    exit
