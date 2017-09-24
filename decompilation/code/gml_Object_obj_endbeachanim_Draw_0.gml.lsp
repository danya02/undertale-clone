0x000000:
    if !(> self.crack 0s) goto 0x000058
0x000014:
    call (draw_sprite[]:int32 (+ self.y 13s) (+ self.x 18s) (- self.crack 1s) (var 2430s))
0x000058:
    call (draw_sprite[]:int32 (floor[]:int32 self.y) (floor[]:int32 self.x) (floor[]:int32 self.image_index) self.sprite_index)
    call (draw_sprite[]:int32 (floor[]:int32 (+ (- self.y 23s) self.heady)) (floor[]:int32 (+ self.x self.headx)) self.head_index self.headsprite)
    if !(== self.active 1s) goto 0x000124
0x00010C:
    self.timer = (+ self.timer 1s)
0x000124:
    push -1s
    if !(>= 0s:view_xview 0s) goto 0x000154
0x000140:
    push (< self.timer 20s)
    goto 0x000158
0x000154:
    push 0s
0x000158:
    if !pop goto 0x000180
0x00015C:
    push -1s
    stog.view_xview[(- 0s:view_xview 2s)] = 0s
0x000180:
    if !(== self.timer 0s) goto 0x000254
0x000194:
    self.t1 = (instance_create[]:int32 (var 1689s) (var 15s) (var 168s))
    push "UNDYNE"
    stog.text* = (int32 self.t1)
    push "Design by Toby#Armor by Temmie#Fashion help:#JN Wiedle & Gigi DG"
    stog.text2* = (int32 self.t1)
    self.t2 = (instance_create[]:int32 (var 1689s) (var 150s) (var 168s))
    push "ALPHYS"
    stog.text* = (int32 self.t2)
    push "Design by Toby"
    stog.text2* = (int32 self.t2)
0x000254:
    if !(== self.timer 5s) goto 0x000274
0x000268:
    self.shuffle = 1s
0x000274:
    if !(== self.timer 25s) goto 0x000294
0x000288:
    self.shuffle = 0s
0x000294:
    if !(== self.timer 65s) goto 0x0002B4
0x0002A8:
    self.shuffle = 1s
0x0002B4:
    if !(== self.timer 85s) goto 0x0002D4
0x0002C8:
    self.shuffle = 0s
0x0002D4:
    if !(== self.timer 125s) goto 0x0002F4
0x0002E8:
    self.shuffle = 1s
0x0002F4:
    if !(== self.timer 145s) goto 0x000314
0x000308:
    self.shuffle = 0s
0x000314:
    if !(== self.shuffle 1s) goto 0x000368
0x000328:
    self.x = (- self.x 0.5d)
    self.image_index = (+ self.image_index 0.2d)
0x000368:
    if !(== self.timer 170s) goto 0x000388
0x00037C:
    self.head_index = 1s
0x000388:
    if (== self.timer 191s) goto 0x0003B0
0x00039C:
    push (== self.timer 193s)
    goto 0x0003B4
0x0003B0:
    push 1s
0x0003B4:
    if !pop goto 0x0003D0
0x0003B8:
    self.headx = (+ self.headx 1s)
0x0003D0:
    if (== self.timer 210s) goto 0x0003F8
0x0003E4:
    push (== self.timer 212s)
    goto 0x0003FC
0x0003F8:
    push 1s
0x0003FC:
    if !pop goto 0x000418
0x000400:
    self.headx = (- self.headx 1s)
0x000418:
    if (== self.timer 214s) goto 0x000440
0x00042C:
    push (== self.timer 216s)
    goto 0x000444
0x000440:
    push 1s
0x000444:
    if !pop goto 0x000484
0x000448:
    self.head_index = 2s
    self.headx = (- self.headx 1s)
    self.heady = (+ self.heady 1s)
0x000484:
    if !(== self.timer 216s) goto 0x000570
0x000498:
    self.heart = (instance_create[]:int32 (var 1363s) (- self.y 10s) (- self.x 5s))
    push 0.25d
    stog.image_speed* = (int32 self.heart)
    push 1s
    stog.visible* = (int32 self.heart)
    push 2429s
    stog.sprite_index* = (int32 self.heart)
    push -0.5d
    stog.vspeed* = (int32 self.heart)
    push 0s
    stog.image_index* = (int32 self.alphys)
    push 0s
    stog.image_speed* = (int32 self.alphys)
0x000570:
    if !(== self.timer 226s) goto 0x00059C
0x000584:
    push 2435s
    stog.sprite_index* = (int32 self.alphys)
0x00059C:
    if !(> self.timer 226s) goto 0x0005C4
0x0005B0:
    push (< self.timer 246s)
    goto 0x0005C8
0x0005C4:
    push 0s
0x0005C8:
    if !pop goto 0x0005FC
0x0005CC:
    stog.image_alpha* = (- (int32 self.heart):image_alpha 0.05d)
0x0005FC:
    push (int32 self.heart)
    if !(== self.timer 247s) goto 0x000630
0x000610:
    pushenv (int32 self.heart) 0x00062C
0x000620:
    call (instance_destroy[]:int32 )
0x00062C:
    popenv 0x000620
0x000630:
    if (== self.timer 246s) goto 0x000658
0x000644:
    push (== self.timer 248s)
    goto 0x00065C
0x000658:
    push 1s
0x00065C:
    if !pop goto 0x00069C
0x000660:
    self.head_index = 1s
    self.heady = (- self.heady 1s)
    self.headx = (+ self.headx 1s)
0x00069C:
    if !(>= self.timer 268s) goto 0x0006C4
0x0006B0:
    push (<= self.timer 300s)
    goto 0x0006C8
0x0006C4:
    push 0s
0x0006C8:
    if !pop goto 0x000728
0x0006CC:
    self.head_index = 3s
    if !(< (int32 self.alphys):image_index 16s) goto 0x000728
0x0006F8:
    stog.image_index* = (+ (int32 self.alphys):image_index 0.5d)
0x000728:
    push (int32 self.alphys)
    if !(== self.timer 320s) goto 0x00077C
0x00073C:
    push 2434s
    stog.sprite_index* = (int32 self.alphys)
    stog.x* = (- (int32 self.alphys):x 2s)
0x00077C:
    push (int32 self.alphys)
    if !(== self.timer 321s) goto 0x0007B8
0x000790:
    stog.x* = (- (int32 self.alphys):x 2s)
0x0007B8:
    push (int32 self.alphys)
    if !(== self.timer 322s) goto 0x0007F4
0x0007CC:
    stog.x* = (- (int32 self.alphys):x 2s)
0x0007F4:
    push (int32 self.alphys)
    if !(== self.timer 323s) goto 0x000830
0x000808:
    stog.x* = (- (int32 self.alphys):x 2s)
0x000830:
    push (int32 self.alphys)
    if !(== self.timer 324s) goto 0x00086C
0x000844:
    stog.x* = (- (int32 self.alphys):x 1s)
0x00086C:
    push (int32 self.alphys)
    if !(== self.timer 325s) goto 0x0008A8
0x000880:
    stog.x* = (- (int32 self.alphys):x 1s)
0x0008A8:
    push (int32 self.alphys)
    if !(== self.timer 326s) goto 0x0008E4
0x0008BC:
    stog.x* = (- (int32 self.alphys):x 1s)
0x0008E4:
    push (int32 self.alphys)
    if !(== self.timer 327s) goto 0x000920
0x0008F8:
    stog.x* = (- (int32 self.alphys):x 1s)
0x000920:
    push (int32 self.alphys)
    if !(>= self.timer 320s) goto 0x000948
0x000934:
    push (<= self.timer 370s)
    goto 0x00094C
0x000948:
    push 0s
0x00094C:
    if !pop goto 0x0009A4
0x000950:
    call (draw_sprite[]:int32 (- (int32 self.alphys):y 20s) (- (int32 self.alphys):x 20s) (var 0s) (var 2433s))
0x0009A4:
    if !(== self.timer 370s) goto 0x0009DC
0x0009B8:
    self.headsprite = 2440s
    self.sprite_index = 2436s
    self.siner = 0s
0x0009DC:
    if !(>= self.timer 370s) goto 0x000A04
0x0009F0:
    push (<= self.timer 440s)
    goto 0x000A08
0x000A04:
    push 0s
0x000A08:
    if !pop goto 0x000A98
0x000A0C:
    self.siner = (+ self.siner 1s)
    self.heady = (* (sin[]:int32 (/ self.siner (double 2s))) 0.8d)
    self.image_index = (+ self.image_index 0.25d)
    self.head_index = (+ self.head_index 0.25d)
0x000A98:
    if !(== self.timer 440s) goto 0x000AE4
0x000AAC:
    self.image_index = 0s
    self.headsprite = 2441s
    self.sprite_index = 2438s
    stog.alarm[0s] = 8s
0x000AE4:
    if !(>= self.timer 440s) goto 0x000BD4
0x000AF8:
    pushenv (int32 self.t1) 0x000B14
0x000B08:
    self.fader = 1s
0x000B14:
    popenv 0x000B08
0x000B18:
    pushenv (int32 self.t2) 0x000B34
0x000B28:
    self.fader = 1s
0x000B34:
    popenv 0x000B28
0x000B38:
    self.siner = (+ self.siner 1s)
    self.heady = (+ (* (sin[]:int32 (/ self.siner (double 2s))) 1.2d) 0.6d)
    self.image_index = (+ self.image_index 0.25d)
    self.head_index = (+ self.head_index 0.25d)
0x000BD4:
    if !(>= self.timer 500s) goto 0x000C48
0x000BE8:
    push -1s
    stog.view_xview[(+ 0s:view_xview 4s)] = 0s
    push -1s
    if !(>= 0s:view_xview 160s) goto 0x000C48
0x000C28:
    global.cast_type = 2s
    call (room_goto[]:int32 (var 278s))
0x000C48:
    exit
