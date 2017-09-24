0x000000:
    if !(== self.pause 1s) goto 0x0006E4
0x000014:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 64s) self.x (var 0s) (var 582s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 128s) (- self.x 2s) (var 0s) (var 596s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var -2s) (+ self.y 128s) (+ self.x 2s) (var 0s) (var 596s))
    push -5s
    if !(== 20s:flag 0s) goto 0x000230
0x000160:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 32s) (- self.x 44s) (var 0s) (var 588s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var -2s) (+ self.y 32s) (+ self.x 46s) (var 0s) (var 588s))
0x000230:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 586s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 12s) self.x global.faceemotion (var 585s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- self.y 22s) (- self.x 32s) (var 0s) (var 594s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var -2s) (- self.y 22s) (+ self.x 32s) (var 0s) (var 594s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- self.y 20s) self.x self.hat (var 595s))
    push -5s
    if !(== 20s:flag 1s) goto 0x000504
0x000434:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 32s) (- self.x 44s) (var 0s) (var 592s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var -2s) (+ self.y 32s) (+ self.x 46s) (var 0s) (var 592s))
0x000504:
    push -5s
    if !(== 20s:flag 2s) goto 0x0005F0
0x000520:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 32s) (- self.x 44s) (var 0s) (var 589s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var -2s) (+ self.y 32s) (+ self.x 46s) (var 0s) (var 589s))
0x0005F0:
    push -5s
    if !(>= 20s:flag 3s) goto 0x0006E4
0x00060C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 32s) (- self.x 44s) (var 0s) (var 589s))
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var -2s) (+ self.y 28s) (+ self.x 52s) -5s 20s:flag (var 591s))
0x0006E4:
    if !(== self.freeze 0s) goto 0x000720
0x0006F8:
    if !(== self.back 0s) goto 0x000720
0x00070C:
    push (== self.pause 0s)
    goto 0x000724
0x000720:
    push 0s
0x000724:
    if !pop goto 0x0011F0
0x000728:
    self.siner = (+ self.siner 1s)
    if !(== self.intense 1s) goto 0x00076C
0x000754:
    self.siner = (+ self.siner 1s)
0x00076C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (* (sin[]:int32 (/ self.siner (double 12s))) 2s) (+ self.y 88s) (+ self.x (* (sin[]:int32 (/ self.siner (double 12s))) 46s)) (var 0s) (var 597s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 64s) (* (sin[]:int32 (/ self.siner (double 6s))) 2s)) self.x (var 0s) (var 582s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (+ 2s (* (cos[]:int32 (/ self.siner (double 3s))) 0.1d)) (var 2s) (+ self.y 128s) (- (- self.x 2s) (* (sin[]:int32 (/ self.siner (double 6s))) 2s)) (var 0s) (var 596s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (+ 2s (* (cos[]:int32 (/ self.siner (double 3s))) 0.1d)) (var -2s) (+ self.y 128s) (+ (+ self.x 2s) (* (sin[]:int32 (/ self.siner (double 6s))) 2s)) (var 0s) (var 596s))
    push -5s
    if !(== 20s:flag 0s) goto 0x000B5C
0x000A2C:
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 32s) (+ (- self.x 44s) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) -5s 20s:flag (var 588s))
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var -2s) (+ self.y 32s) (- (+ self.x 46s) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) -5s 20s:flag (var 588s))
0x000B5C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y (* (sin[]:int32 (/ self.siner (double 6s))) 3s)) self.x (var 0s) (var 586s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 12s) (* (sin[]:int32 (/ self.siner (double 6s))) 4s)) self.x global.faceemotion (var 585s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (- self.y 22s) (* (sin[]:int32 (/ self.siner (double 6s))) 1s)) (- self.x 32s) (var 0s) (var 594s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var -2s) (+ (- self.y 22s) (* (sin[]:int32 (/ self.siner (double 6s))) 1s)) (+ self.x 32s) (var 0s) (var 594s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (- self.y 20s) (* (sin[]:int32 (/ self.siner (double 6s))) 5s)) self.x self.hat (var 595s))
    push -5s
    if !(== 20s:flag 1s) goto 0x000F58
0x000E28:
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 32s) (+ (- self.x 44s) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) -5s 20s:flag (var 592s))
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var -2s) (+ self.y 32s) (- (+ self.x 46s) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) -5s 20s:flag (var 592s))
0x000F58:
    push -5s
    if !(== 20s:flag 2s) goto 0x0010A4
0x000F74:
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 32s) (+ (- self.x 44s) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) -5s 20s:flag (var 589s))
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var -2s) (+ self.y 32s) (- (+ self.x 46s) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) -5s 20s:flag (var 589s))
0x0010A4:
    push -5s
    if !(>= 20s:flag 3s) goto 0x0011F0
0x0010C0:
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 32s) (+ (- self.x 44s) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) -5s 20s:flag (var 589s))
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var -2s) (+ self.y 28s) (- (+ self.x 52s) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) -5s 20s:flag (var 591s))
0x0011F0:
    if !(== self.back 1s) goto 0x002870
0x001204:
    self.tailsiner = (+ self.tailsiner (+ 1s self.tail_t))
    self.siner = (+ self.siner 1s)
    if !(== self.intense 1s) goto 0x00126C
0x001254:
    self.siner = (+ self.siner 1s)
0x00126C:
    if !(== self.armtype 0s) goto 0x0013A0
0x001280:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 32s) (+ (- self.x 44s) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) (var 0s) (var 588s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var -2s) (+ self.y 32s) (- (+ self.x 46s) (* (sin[]:int32 (/ self.siner (double 3s))) 2s)) (var 0s) (var 588s))
0x0013A0:
    if !(== self.armtype 1s) goto 0x0017E8
0x0013B4:
    self.arm_a = (* (sin[]:int32 (/ self.siner (double 8s))) 22s)
    self.armspr = 590s
    if !(<= self.arm_a -16s) goto 0x001500
0x001400:
    self.armspr = 593s
    if !(== self.madetrash 0s) goto 0x001500
0x001420:
    self.madetrash = 1s
    if (<= (int32 self.diff) 0) goto 0x0014B8
0x00144C:
    push (int32 self.diff)
    call (instance_create[]:int32 (var 456s) (+ (+ (+ self.y 32s) 8s) self.arm_a) (+ (- self.x 54s) self.arm_a))
    if (bool (- pop 1)) goto 0x00144C
0x0014B8:
    push (- pop 1)
    pop
    if !(bool (instance_exists[]:int32 (var 458s))) goto 0x001500
0x0014D4:
    if !(>= 458.myplot 5s) goto 0x001500
0x0014E8:
    pushenv 456s 0x0014FC
0x0014F0:
    self.stop = -1s
0x0014FC:
    popenv 0x0014F0
0x001500:
    if !(> self.arm_a 0s) goto 0x001520
0x001514:
    self.madetrash = 0s
0x001520:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (- (sin[]:int32 (/ self.siner (double 4s)))) 15s) (var 2s) (var 2s) (+ (+ (+ self.y 32s) 20s) self.arm_a) (+ (- self.x 20s) self.arm_a) (var 0s) self.armspr)
    self.arm_b = (* (sin[]:int32 (/ (+ 24s self.siner) (double 8s))) 22s)
    self.armspr = 590s
    if !(<= self.arm_b -16s) goto 0x00171C
0x00161C:
    self.armspr = 593s
    if !(== self.madetrash_b 0s) goto 0x00171C
0x00163C:
    self.madetrash_b = 1s
    if (<= (int32 self.diff) 0) goto 0x0016D4
0x001668:
    push (int32 self.diff)
    call (instance_create[]:int32 (var 456s) (+ (+ (+ self.y 32s) 8s) self.arm_b) (- (+ self.x 54s) self.arm_b))
    if (bool (- pop 1)) goto 0x001668
0x0016D4:
    push (- pop 1)
    pop
    if !(bool (instance_exists[]:int32 (var 458s))) goto 0x00171C
0x0016F0:
    if !(>= 458.myplot 5s) goto 0x00171C
0x001704:
    pushenv 456s 0x001718
0x00170C:
    self.stop = -1s
0x001718:
    popenv 0x00170C
0x00171C:
    if !(> self.arm_b 0s) goto 0x00173C
0x001730:
    self.madetrash_b = 0s
0x00173C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (sin[]:int32 (/ (+ 12s self.siner) (double 4s))) 15s) (var 2s) (var -2s) (+ (+ (+ self.y 32s) 20s) self.arm_b) (- (+ self.x 22s) self.arm_b) (var 0s) self.armspr)
0x0017E8:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (- self.y 20s) (* (sin[]:int32 (/ self.siner (double 6s))) 5s)) self.x self.hat (var 595s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y (* (sin[]:int32 (/ self.siner (double 6s))) 3s)) self.x (var 0s) (var 587s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (+ 2s (* (cos[]:int32 (/ self.siner (double 3s))) 0.1d)) (var 2s) (+ self.y 128s) (- (- self.x 2s) (* (sin[]:int32 (/ self.siner (double 6s))) 2s)) (var 0s) (var 596s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (+ 2s (* (cos[]:int32 (/ self.siner (double 3s))) 0.1d)) (var -2s) (+ self.y 128s) (+ (+ self.x 2s) (* (sin[]:int32 (/ self.siner (double 6s))) 2s)) (var 0s) (var 596s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (- self.y 22s) (* (sin[]:int32 (/ self.siner (double 6s))) 1s)) (- self.x 32s) (var 0s) (var 594s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var -2s) (+ (- self.y 22s) (* (sin[]:int32 (/ self.siner (double 6s))) 1s)) (+ self.x 32s) (var 0s) (var 594s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 64s) (* (sin[]:int32 (/ self.siner (double 6s))) 2s)) self.x (var 0s) (var 583s))
    if !(== self.tailtype 0s) goto 0x001E14
0x001C24:
    self.minpull = (* (sin[]:int32 (/ self.tailsiner (double 12s))) 1.7d)
    if !(> self.minpull 0s) goto 0x001C8C
0x001C6C:
    self.minpull = (+ self.minpull 0.3d)
0x001C8C:
    if !(< self.minpull 0s) goto 0x001CC0
0x001CA0:
    self.minpull = (- self.minpull 0.3d)
0x001CC0:
    self.i = 0s
    if !(< self.i 16s) goto 0x001E14
0x001CE0:
    if !(>= self.minpull 0s) goto 0x001D00
0x001CF4:
    self.g = -1s
0x001D00:
    if !(< self.minpull 0s) goto 0x001D20
0x001D14:
    self.g = 1s
0x001D20:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (+ self.minpull (* (* self.i 0.04d) self.g)) (+ (+ self.y 82s) (* (sin[]:int32 (/ self.siner (double 6s))) 2s)) (+ self.x (* (sin[]:int32 (/ self.tailsiner (double 12s))) 40s)) (var 0s) (var 598s))
    self.i = (+ self.i 1s)
    goto 0x001CCC
0x001E14:
    if !(== self.tailtype 1s) goto 0x002840
0x001E28:
    self.rot = (* (sin[]:int32 (/ self.tailsiner (double 12s))) 80s)
    self.cut = 1s
    if (>= self.rot 46s) goto 0x001E88
0x001E74:
    push (<= self.rot -46s)
    goto 0x001E8C
0x001E88:
    push 1s
0x001E8C:
    if !pop goto 0x001EA4
0x001E90:
    self.cut = 0.5d
0x001EA4:
    if (>= self.rot 49s) goto 0x001ECC
0x001EB8:
    push (<= self.rot -49s)
    goto 0x001ED0
0x001ECC:
    push 1s
0x001ED0:
    if !pop goto 0x001EE8
0x001ED4:
    self.cut = 0.25d
0x001EE8:
    if (>= self.rot 52s) goto 0x001F10
0x001EFC:
    push (<= self.rot -52s)
    goto 0x001F14
0x001F10:
    push 1s
0x001F14:
    if !pop goto 0x001F24
0x001F18:
    self.cut = 0s
0x001F24:
    self.add = (* (- self.extend (* (abs[]:int32 (sin[]:int32 (/ self.tailsiner (double 12s)))) self.extend)) self.cut)
    if !(< (abs[]:int32 self.rot) 58s) goto 0x002358
0x001F90:
    call (draw_sprite_ext[]:int32 (var 1s) self.ch_color (* (sin[]:int32 (/ self.tailsiner (double 12s))) 80s) (+ 2s self.add) (- 2s (/ self.add (double 4s))) (- (+ self.y 42s) (* self.add 15s)) self.x (var 0s) (var 599s))
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) (var 743s) (+ (- (+ self.y 42s) (* self.add 15s)) (lengthdir_y[]:int32 (- self.rot 90s) (+ 130s (* 60s self.add)))) (+ self.x (lengthdir_x[]:int32 (- self.rot 90s) (+ 130s (* 60s self.add)))) (- (+ self.y 42s) (* self.add 15s)) self.x)) goto 0x002134
0x002120:
    call (event_user[]:int32 (var 1s))
0x002134:
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) (var 743s) (+ (- (+ self.y 42s) (* self.add 15s)) (lengthdir_y[]:int32 (- self.rot 90s) (+ 130s (* 60s self.add)))) (- (+ self.x (lengthdir_x[]:int32 (- self.rot 90s) (+ 130s (* 60s self.add)))) 2s) (- (+ self.y 42s) (* self.add 15s)) (- self.x 2s))) goto 0x002240
0x00222C:
    call (event_user[]:int32 (var 1s))
0x002240:
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) (var 743s) (+ (- (+ self.y 42s) (* self.add 15s)) (lengthdir_y[]:int32 (- self.rot 90s) (+ 130s (* 60s self.add)))) (+ (+ self.x (lengthdir_x[]:int32 (- self.rot 90s) (+ 130s (* 60s self.add)))) 2s) (- (+ self.y 42s) (* self.add 15s)) (+ self.x 2s))) goto 0x00234C
0x002338:
    call (event_user[]:int32 (var 1s))
0x00234C:
    self.madech = 0s
0x002358:
    if !(>= self.rot 58s) goto 0x0025CC
0x00236C:
    if !(== self.madech 0s) goto 0x002464
0x002380:
    self.madech = 1s
    if !(== self.ch 0s) goto 0x0023CC
0x0023A0:
    self.ch = (choose[]:int32 (var 0s) (var 1s) (var 1s))
    goto 0x00242C
0x0023CC:
    if !(== self.ch 1s) goto 0x00240C
0x0023E0:
    self.ch = (choose[]:int32 (var 1s) (var 0s) (var 0s))
    goto 0x00242C
0x00240C:
    self.ch = (choose[]:int32 (var 1s) (var 0s))
0x00242C:
    if !(== self.ch 0s) goto 0x002454
0x002440:
    self.ch_color = 16754964
    goto 0x002464
0x002454:
    self.ch_color = 4235519
0x002464:
    if !(== self.ch 0s) goto 0x0024C4
0x002478:
    self.ch_color2 = (merge_color[]:int32 (abs[]:int32 (sin[]:int32 (/ self.siner (double 2s)))) (var 16754964) (var 16777215))
0x0024C4:
    if !(== self.ch 1s) goto 0x002524
0x0024D8:
    self.ch_color2 = (merge_color[]:int32 (abs[]:int32 (sin[]:int32 (/ self.siner (double 2s)))) (var 4235519) (var 16777215))
0x002524:
    call (draw_sprite_ext[]:int32 (var 1s) self.ch_color2 (- (* (sin[]:int32 (/ self.tailsiner (double 12s))) 60s) 60s) (var 2s) (var 2s) (+ self.y 80s) (+ self.x (* (sin[]:int32 (/ self.tailsiner (double 12s))) 44s)) (var 0s) (var 598s))
0x0025CC:
    if !(<= self.rot -58s) goto 0x002840
0x0025E0:
    if !(== self.madech 0s) goto 0x0026D8
0x0025F4:
    self.madech = 1s
    if !(== self.ch 0s) goto 0x002640
0x002614:
    self.ch = (choose[]:int32 (var 0s) (var 1s) (var 1s))
    goto 0x0026A0
0x002640:
    if !(== self.ch 1s) goto 0x002680
0x002654:
    self.ch = (choose[]:int32 (var 1s) (var 0s) (var 0s))
    goto 0x0026A0
0x002680:
    self.ch = (choose[]:int32 (var 1s) (var 0s))
0x0026A0:
    if !(== self.ch 0s) goto 0x0026C8
0x0026B4:
    self.ch_color = 16754964
    goto 0x0026D8
0x0026C8:
    self.ch_color = 4235519
0x0026D8:
    if !(== self.ch 0s) goto 0x002738
0x0026EC:
    self.ch_color2 = (merge_color[]:int32 (abs[]:int32 (sin[]:int32 (/ self.siner (double 2s)))) (var 16754964) (var 16777215))
0x002738:
    if !(== self.ch 1s) goto 0x002798
0x00274C:
    self.ch_color2 = (merge_color[]:int32 (abs[]:int32 (sin[]:int32 (/ self.siner (double 2s)))) (var 4235519) (var 16777215))
0x002798:
    call (draw_sprite_ext[]:int32 (var 1s) self.ch_color2 (+ (* (sin[]:int32 (/ self.tailsiner (double 12s))) 60s) 60s) (var 2s) (var -2s) (+ self.y 80s) (+ self.x (* (sin[]:int32 (/ self.tailsiner (double 12s))) 44s)) (var 0s) (var 598s))
0x002840:
    if !(== self.o_o 0s) goto 0x002864
0x002854:
    self.o_o = 1s
    goto 0x002870
0x002864:
    self.o_o = 0s
0x002870:
    if !(== self.shimmy 1s) goto 0x0028BC
0x002884:
    self.x = (+ self.x (* (cos[]:int32 (/ self.siner (double 12s))) 6s))
0x0028BC:
    exit
