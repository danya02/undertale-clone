0x000000:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
    if !(== self.fade 1s) goto 0x0000AC
0x00006C:
    self.image_alpha = (- self.image_alpha 0.08d)
    self.image_xscale = (- self.image_xscale 0.06d)
0x0000AC:
    if !(< self.image_xscale 0.08d) goto 0x0000D4
0x0000C8:
    call (instance_destroy[]:int32 )
0x0000D4:
    if !(== (instance_number[]:int32 (var 719s)) 0s) goto 0x000104
0x0000F0:
    push (== self.hit 0s)
    goto 0x000108
0x000104:
    push 0s
0x000108:
    if !pop goto 0x000654
0x00010C:
    self.hit = 1s
    if !(== self.myscore 0s) goto 0x000164
0x00012C:
    global.damage = 0s
    stog.hurtanim[(int32 global.mytarget)] = 5s
    self.fade = 1s
    exit
0x000164:
    if !(> self.myscore 0s) goto 0x000654
0x000178:
    push -5s
    self.mons = (int32 global.mytarget):monsterinstance
    call (script_execute[]:int32 (var 162s))
    self.damage = (* self.damage (* (/ self.myscore (double 160s)) (/ (double 4s) self.num)))
    self.damage = (round[]:int32 self.damage)
    global.damage = self.damage
    global.damage = (+ global.damage (round[]:int32 (random[]:int32 (var 2s))))
    push global.damage
    stog.takedamage* = (int32 self.mons)
    global.stretch = 2s
    self.ht = 100s
    self.wd = 100s
    push self.id
    stog.trgtest* = (int32 self.mons)
    self.critter = 0s
    if !(> self.myscore (* 400s (/ self.num (double 4s)))) goto 0x0002E0
0x0002D4:
    self.critter = 1s
0x0002E0:
    pushenv (int32 self.mons) 0x000328
0x0002F0:
    push self.ht
    stog.ht* = (int32 self.trgtest)
    push self.wd
    stog.wd* = (int32 self.trgtest)
0x000328:
    popenv 0x0002F0
0x00032C:
    if !(== global.weapon 25s) goto 0x0003EC
0x000340:
    call (instance_create[]:int32 (var 717s) (+ (int32 self.mons):y (/ self.ht (double 2s))) (+ (int32 self.mons):x (/ self.wd (double 2s))))
    if !(== self.critter 1s) goto 0x0003E0
0x0003C0:
    pushenv 717s 0x0003DC
0x0003C8:
    call (event_user[]:int32 (var 5s))
0x0003DC:
    popenv 0x0003C8
0x0003E0:
    global.damagetimer = 10s
0x0003EC:
    if !(== global.weapon 49s) goto 0x0004AC
0x000400:
    call (instance_create[]:int32 (var 727s) (+ (int32 self.mons):y (/ self.ht (double 2s))) (+ (int32 self.mons):x (/ self.wd (double 2s))))
    if !(== self.critter 1s) goto 0x0004A0
0x000480:
    pushenv 727s 0x00049C
0x000488:
    call (event_user[]:int32 (var 5s))
0x00049C:
    popenv 0x000488
0x0004A0:
    global.damagetimer = 20s
0x0004AC:
    if !(== global.weapon 47s) goto 0x00056C
0x0004C0:
    call (instance_create[]:int32 (var 731s) (+ (int32 self.mons):y (/ self.ht (double 2s))) (+ (int32 self.mons):x (/ self.wd (double 2s))))
    if !(== self.critter 1s) goto 0x000560
0x000540:
    pushenv 731s 0x00055C
0x000548:
    call (event_user[]:int32 (var 5s))
0x00055C:
    popenv 0x000548
0x000560:
    global.damagetimer = 20s
0x00056C:
    if !(== global.weapon 45s) goto 0x00062C
0x000580:
    call (instance_create[]:int32 (var 726s) (+ (int32 self.mons):y (/ self.ht (double 2s))) (+ (int32 self.mons):x (/ self.wd (double 2s))))
    if !(== self.critter 1s) goto 0x000620
0x000600:
    pushenv 726s 0x00061C
0x000608:
    call (event_user[]:int32 (var 5s))
0x00061C:
    popenv 0x000608
0x000620:
    global.damagetimer = 24s
0x00062C:
    stog.hurtanim[(int32 global.mytarget)] = 1s
    self.fade = 1s
0x000654:
    exit
