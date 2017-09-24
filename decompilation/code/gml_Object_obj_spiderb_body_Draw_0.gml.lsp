0x000000:
    if !(bool (instance_exists[]:int32 (var 759s))) goto 0x00006C
0x000018:
    if !(< 759.y 240s) goto 0x00005C
0x00002C:
    self.y = (- (- self.ystart 4s) (- 240s 759.y))
    goto 0x00006C
0x00005C:
    self.y = self.ystart
0x00006C:
    if !(== self.hurt 1s) goto 0x000114
0x000080:
    self.x = (+ (int32 self.parent):x 62s)
    self.siner = 0s
    stog.eye[0s] = 0s
    stog.eye[1s] = 0s
    stog.eye[2s] = 0s
    stog.eye[3s] = 0s
    stog.eye[4s] = 0s
0x000114:
    if !(== self.pauser 1s) goto 0x000198
0x000128:
    self.siner = 0s
    stog.eye[0s] = 0s
    stog.eye[1s] = 0s
    stog.eye[2s] = 0s
    stog.eye[3s] = 0s
    stog.eye[4s] = 0s
0x000198:
    self.heady = (+ self.y (* (sin[]:int32 (/ self.siner (double 5s))) 4s))
    self.hairrot = (* (sin[]:int32 (/ self.siner (double 5s))) 25s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (- (sin[]:int32 (/ self.siner (double 5s)))) 6s) (var 2s) (var -2s) (+ (+ (+ self.y 86s) 26s) (cos[]:int32 (/ self.siner (double 5s)))) (+ self.x 14s) (var 0s) (var 424s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var -2s) (+ (+ self.y 86s) (cos[]:int32 (/ self.siner (double 5s)))) (+ self.x 42s) (var 0s) (var 425s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (sin[]:int32 (/ self.siner (double 5s))) 6s) (var 2s) (var 2s) (+ (+ (+ self.y 86s) 26s) (cos[]:int32 (/ self.siner (double 5s)))) (+ self.x 78s) (var 0s) (var 424s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 86s) (cos[]:int32 (/ self.siner (double 5s)))) (+ self.x 50s) (var 0s) (var 425s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.hairrot (var 2s) (var 2s) (+ (* self.heady 1.02d) 18s) (+ self.x 80s) (var 0s) (var 426s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (- self.hairrot) (var 2s) (var -2s) (+ (* self.heady 1.02d) 18s) (+ self.x 12s) (var 0s) (var 426s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.heady self.x (var 0s) (var 427s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 162s) (+ self.x 30s) (var 0s) (var 422s))
    self.arm = 0s
    if !(< (sin[]:int32 (/ self.siner (double 5s))) 0s) goto 0x00065C
0x000650:
    self.arm = 1s
0x00065C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (- (* (sin[]:int32 (/ self.siner (double 5s))) 8s) 8s) (var 2s) (var 2s) (+ (+ self.y 130s) (sin[]:int32 (/ self.siner (double 5s)))) (+ self.x 26s) self.arm (var 420s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (+ (- (* (sin[]:int32 (/ self.siner (double 5s))) 8s)) 8s) (var 2s) (var -2s) (+ (+ self.y 130s) (sin[]:int32 (/ self.siner (double 5s)))) (+ self.x 64s) self.arm (var 420s))
    if !(== self.mode 0s) goto 0x0009B8
0x0007CC:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (- (sin[]:int32 (/ self.siner (double 5s)))) 24s) (var 2s) (var 2s) (+ (+ self.y 104s) (* (cos[]:int32 (/ self.siner (double 5s))) 2s)) (- self.x 22s) (var 0s) (var 419s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 116s) (* (cos[]:int32 (/ self.siner (double 5s))) 2s)) (+ self.x 12s) (var 0s) (var 417s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (sin[]:int32 (/ self.siner (double 5s))) 3s) (var 2s) (var 2s) (+ (+ self.y 130s) (* (cos[]:int32 (/ self.siner (double 5s))) 2s)) (+ self.x 12s) (var 0s) (var 418s))
0x0009B8:
    if !(== self.mode 0s) goto 0x000BB8
0x0009CC:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (- (sin[]:int32 (/ self.siner (double 5s)))) 24s) (var 2s) (var -2s) (+ (+ self.y 104s) (* (cos[]:int32 (/ self.siner (double 5s))) 2s)) (+ self.x 114s) (var 0s) (var 419s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var -2s) (+ (+ self.y 116s) (* (cos[]:int32 (/ self.siner (double 5s))) 2s)) (+ self.x 80s) (var 0s) (var 417s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (sin[]:int32 (/ self.siner (double 5s))) 3s) (var 2s) (var -2s) (+ (+ self.y 130s) (* (cos[]:int32 (/ self.siner (double 5s))) 2s)) (+ self.x 80s) (var 0s) (var 418s))
0x000BB8:
    if !(== self.mode 1s) goto 0x001004
0x000BCC:
    if !(< self.sinert 55s) goto 0x000C18
0x000BE0:
    if !(== self.pour 0s) goto 0x000C08
0x000BF4:
    stog.alarm[5s] = 1s
0x000C08:
    self.pour = 1s
    goto 0x000C30
0x000C18:
    self.sinert = (- self.sinert 1s)
0x000C30:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (- (sin[]:int32 (/ self.sinert (double 5s)))) 36s) (var 2s) (var 2s) (+ (+ self.y 104s) (* (cos[]:int32 (/ self.sinert (double 5s))) 2s)) (- self.x 22s) (var 0s) (var 419s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 116s) (* (cos[]:int32 (/ self.sinert (double 5s))) 2s)) (+ self.x 12s) (var 0s) (var 417s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (sin[]:int32 (/ self.sinert (double 5s))) 3s) (var 2s) (var 2s) (+ (+ self.y 130s) (* (cos[]:int32 (/ self.sinert (double 5s))) 2s)) (+ self.x 12s) (var 0s) (var 418s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (sin[]:int32 (/ self.sinert (double 5s))) 36s) (var 2s) (var -2s) (+ (+ self.y 104s) (* (cos[]:int32 (/ self.sinert (double 5s))) 2s)) (+ self.x 114s) (var 0s) (var 419s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var -2s) (+ (+ self.y 116s) (* (cos[]:int32 (/ self.sinert (double 5s))) 2s)) (+ self.x 80s) (var 0s) (var 417s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (sin[]:int32 (/ self.sinert (double 5s))) 3s) (var 2s) (var -2s) (+ (+ self.y 130s) (* (cos[]:int32 (/ self.sinert (double 5s))) 2s)) (+ self.x 80s) (var 0s) (var 418s))
0x001004:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 114s) (sin[]:int32 (/ self.siner (double 5s)))) (+ self.x 20s) (var 0s) (var 423s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 92s) (* (sin[]:int32 (/ self.siner (double 5s))) 2s)) (+ self.x 28s) (var 0s) (var 421s))
    self.i = 0s
    if !(< self.i 5s) goto 0x001330
0x00113C:
    if !(> self.anim (+ 0s (* self.i 5s))) goto 0x00118C
0x001164:
    push (< self.anim (+ 7s (* self.i 5s)))
    goto 0x001190
0x00118C:
    push 0s
0x001190:
    if !pop goto 0x0011C8
0x001194:
    push -1s
    stog.eye[(+ (int32 self.i):eye 0.5d)] = (int32 self.i)
0x0011C8:
    if !(> self.anim (+ 12s (* self.i 5s))) goto 0x001218
0x0011F0:
    push (< self.anim (+ 16s (* self.i 5s)))
    goto 0x00121C
0x001218:
    push 0s
0x00121C:
    if !pop goto 0x00124C
0x001220:
    push -1s
    stog.eye[(- (int32 self.i):eye 1s)] = (int32 self.i)
0x00124C:
    if !(> self.anim 70s) goto 0x001274
0x001260:
    push (< self.anim 77s)
    goto 0x001278
0x001274:
    push 0s
0x001278:
    if !pop goto 0x0012B0
0x00127C:
    push -1s
    stog.eye[(+ (int32 self.i):eye 0.5d)] = (int32 self.i)
0x0012B0:
    if !(> self.anim 88s) goto 0x0012D8
0x0012C4:
    push (< self.anim 95s)
    goto 0x0012DC
0x0012D8:
    push 0s
0x0012DC:
    if !pop goto 0x001314
0x0012E0:
    push -1s
    stog.eye[(- (int32 self.i):eye 0.5d)] = (int32 self.i)
0x001314:
    self.i = (+ self.i 1s)
    goto 0x001128
0x001330:
    if !(== self.hurt 0s) goto 0x001574
0x001344:
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.heady 42s) (+ self.x 24s) -1s 0s:eye (var 428s))
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.heady 32s) (+ self.x 30s) -1s 1s:eye (var 430s))
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.heady 26s) (+ self.x 42s) -1s 2s:eye (var 432s))
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var -2s) (+ self.heady 32s) (+ self.x 62s) -1s 3s:eye (var 430s))
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var -2s) (+ self.heady 42s) (+ self.x 68s) -1s 4s:eye (var 428s))
0x001574:
    if !(== self.hurt 1s) goto 0x0017B8
0x001588:
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.heady 42s) (+ self.x 24s) -1s 0s:eye (var 429s))
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.heady 32s) (+ self.x 30s) -1s 1s:eye (var 431s))
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.heady 26s) (+ self.x 42s) -1s 2s:eye (var 433s))
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var -2s) (+ self.heady 32s) (+ self.x 62s) -1s 3s:eye (var 431s))
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 2s) (var -2s) (+ self.heady 42s) (+ self.x 68s) -1s 4s:eye (var 429s))
0x0017B8:
    if !(== self.hurt 0s) goto 0x0017E4
0x0017CC:
    self.siner = (+ self.siner 1s)
0x0017E4:
    self.anim = (+ self.anim 1s)
    if !(> self.anim 110s) goto 0x00181C
0x001810:
    self.anim = 0s
0x00181C:
    if !(bool (instance_exists[]:int32 (var 759s))) goto 0x001A90
0x001834:
    if !(> self.purple 0s) goto 0x001A90
0x001848:
    self.depth = -5s
    self.purple2 = self.purple
    if !(> self.purple2 (- 761.y 759.y)) goto 0x001914
0x001888:
    if !(== self.purpletime 0s) goto 0x0018F8
0x00189C:
    pushenv (int32 self.parent) 0x0018C0
0x0018AC:
    call (event_user[]:int32 (var 2s))
0x0018C0:
    popenv 0x0018AC
0x0018C4:
    self.purpletime = 1s
    pushenv (int32 self.parent) 0x0018F4
0x0018E0:
    stog.alarm[4s] = 60s
0x0018F4:
    popenv 0x0018E0
0x0018F8:
    self.purple2 = (- 761.y 759.y)
0x001914:
    if !(> self.purple 125s) goto 0x00193C
0x001928:
    push (== self.mode 1s)
    goto 0x001940
0x00193C:
    push 0s
0x001940:
    if !pop goto 0x001958
0x001944:
    call (event_user[]:int32 (var 1s))
0x001958:
    call (draw_set_color[]:int32 (var 8388736))
    if !(> self.purple 160s) goto 0x0019F8
0x001984:
    call (draw_set_alpha[]:int32 (- 1s (/ (- self.purple 160s) (double 40s))))
    if !(< (- 1s (/ (- self.purple 160s) (double 40s))) 0.1d) goto 0x0019F8
0x0019EC:
    self.depth = 5s
0x0019F8:
    if !(> self.purple 210s) goto 0x001A24
0x001A0C:
    self.purple = 0s
    self.depth = 5s
0x001A24:
    call (draw_rectangle[]:int32 (var 0s) (+ 761.y 2s) (+ 760.x 2s) (- 761.y self.purple2) (+ 758.x 2s))
    call (draw_set_alpha[]:int32 (var 1s))
0x001A90:
    exit
