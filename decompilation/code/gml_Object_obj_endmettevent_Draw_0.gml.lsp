0x000000:
    self.siner = (+ self.siner 1s)
    self.army = (* (sin[]:int32 (/ self.siner (double 4s))) 1.5d)
    self.x = (+ self.x (cos[]:int32 (/ self.siner (double 6s))))
    call (draw_set_alpha[]:int32 (var 0.2d))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 0s) (var 330s) (var 100s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
    call (draw_set_alpha[]:int32 (var 0.2d))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 0s) (var 330s) (var 80s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(== self.leg 0s) goto 0x0001B8
0x000180:
    call (draw_sprite[]:int32 (+ self.y self.sprite_height) self.x (var 0s) (var 2459s))
0x0001B8:
    if !(== self.leg 1s) goto 0x0002D8
0x0001CC:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.legrot_r (var 1s) (var 1s) (+ self.y 17s) (+ (+ self.x 3s) self.legx) (var 0s) (var 2460s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.legrot_l (var 1s) (var -1s) (+ self.y 17s) (+ (- self.x 2s) self.legx) (var 0s) (var 2460s))
    self.legx = (sin[]:int32 (/ self.siner (double 4s)))
0x0002D8:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1s) (+ (+ (+ self.y 9s) self.army) self.bodyy) (+ self.x 13s) (var 0s) (var 2458s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var -1s) (+ (- (+ self.y 9s) self.army) self.bodyy) (- self.x 12s) (var 0s) (var 2458s))
    call (draw_sprite[]:int32 (+ self.y self.bodyy) self.x (floor[]:int32 (/ self.siner (double 6s))) self.sprite_index)
    if !(== self.active 1s) goto 0x000450
0x000438:
    self.timer = (+ self.timer 1s)
0x000450:
    if !(>= self.timer 5s) goto 0x000478
0x000464:
    push (<= self.timer 35s)
    goto 0x00047C
0x000478:
    push 0s
0x00047C:
    if !pop goto 0x0004B4
0x000480:
    if !(< self.bodyy 13s) goto 0x0004B4
0x000494:
    self.bodyy = (+ self.bodyy 0.5d)
0x0004B4:
    if !(>= self.timer 80s) goto 0x000508
0x0004C8:
    self.leg = 1s
    if !(> self.bodyy -15s) goto 0x000508
0x0004E8:
    self.bodyy = (- self.bodyy 0.5d)
0x000508:
    if !(>= self.timer 120s) goto 0x000530
0x00051C:
    push (<= self.timer 126s)
    goto 0x000534
0x000530:
    push 0s
0x000534:
    if !pop goto 0x000550
0x000538:
    self.legrot_l = (- self.legrot_l 8s)
0x000550:
    if !(>= self.timer 132s) goto 0x000578
0x000564:
    push (<= self.timer 138s)
    goto 0x00057C
0x000578:
    push 0s
0x00057C:
    if !pop goto 0x000598
0x000580:
    self.legrot_l = (+ self.legrot_l 8s)
0x000598:
    if !(>= self.timer 146s) goto 0x0005C0
0x0005AC:
    push (<= self.timer 152s)
    goto 0x0005C4
0x0005C0:
    push 0s
0x0005C4:
    if !pop goto 0x0005E0
0x0005C8:
    self.legrot_r = (+ self.legrot_r 8s)
0x0005E0:
    if !(>= self.timer 158s) goto 0x000608
0x0005F4:
    push (<= self.timer 164s)
    goto 0x00060C
0x000608:
    push 0s
0x00060C:
    if !pop goto 0x000628
0x000610:
    self.legrot_r = (- self.legrot_r 8s)
0x000628:
    if !(== self.timer 170s) goto 0x000648
0x00063C:
    self.timer = 119s
0x000648:
    self.main_timer = (+ self.main_timer 1s)
    if !(>= self.main_timer 40s) goto 0x000688
0x000674:
    push (<= self.main_timer 160s)
    goto 0x00068C
0x000688:
    push 0s
0x00068C:
    if !pop goto 0x0006D8
0x000690:
    call (tile_layer_shift[]:int32 (var 0s) (var -1s) (var 900s))
    call (tile_layer_shift[]:int32 (var 0s) (var 1s) (var 890s))
0x0006D8:
    if !(== self.main_timer 180s) goto 0x0006F8
0x0006EC:
    self.active = 1s
0x0006F8:
    stog.y* = (+ (int32 self.shyren):y (sin[]:int32 (/ self.siner (double 4s))))
    if !(< self.main_timer 0s) goto 0x0007A4
0x00074C:
    push (int32 self.shyren)
    push -1s
    if !(> 0s:view_yview 0s) goto 0x000790
0x000768:
    push -1s
    stog.view_yview[(- 0s:view_yview 4s)] = 0s
    goto 0x0007A4
0x000790:
    stog.view_yview[0s] = 0s
0x0007A4:
    if !(== self.main_timer 90s) goto 0x000818
0x0007B8:
    self.t1 = (instance_create[]:int32 (var 1689s) (var 160s) (var 20s))
    push "METTATON"
    stog.text* = (int32 self.t1)
    push "by Toby"
    stog.text2* = (int32 self.t1)
0x000818:
    if !(== self.main_timer 250s) goto 0x000844
0x00082C:
    push 1s
    stog.fader* = (int32 self.t1)
0x000844:
    if !(== self.main_timer 260s) goto 0x0008B8
0x000858:
    self.t2 = (instance_create[]:int32 (var 1689s) (var 160s) (var 20s))
    push "SPECIAL INSPIRATION"
    stog.text* = (int32 self.t2)
    push "Bob Sparker, Sarah, and JN Wiedle"
    stog.text2* = (int32 self.t2)
0x0008B8:
    if !(== self.main_timer 430s) goto 0x0008E4
0x0008CC:
    push 1s
    stog.fader* = (int32 self.t2)
0x0008E4:
    if !(> self.main_timer 450s) goto 0x000958
0x0008F8:
    push -1s
    stog.view_yview[(+ 0s:view_yview 4s)] = 0s
    push -1s
    if !(> 0s:view_yview 240s) goto 0x000958
0x000938:
    global.cast_type = 3s
    call (room_goto[]:int32 (var 278s))
0x000958:
    exit
