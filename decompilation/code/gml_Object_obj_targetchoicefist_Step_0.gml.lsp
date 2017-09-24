0x000000:
    if !(> self.hspeed 0s) goto 0x000044
0x000014:
    if !(> self.x (+ 738.x 738.sprite_width)) goto 0x000044
0x000038:
    self.xxx = 1s
0x000044:
    if !(< self.hspeed 0s) goto 0x00007C
0x000058:
    if !(< self.x 738.x) goto 0x00007C
0x000070:
    self.xxx = 1s
0x00007C:
    push -5s
    self.mons = (int32 global.mytarget):monsterinstance
    self.ht = 100s
    self.wd = 100s
    if !(bool (instance_exists[]:int32 self.mons)) goto 0x0000E8
0x0000CC:
    push self.id
    stog.trgtest* = (int32 self.mons)
0x0000E8:
    pushenv (int32 self.mons) 0x000130
0x0000F8:
    push self.ht
    stog.ht* = (int32 self.trgtest)
    push self.wd
    stog.wd* = (int32 self.trgtest)
0x000130:
    popenv 0x0000F8
0x000134:
    if !(>= self.image_speed 0.4d) goto 0x000168
0x000150:
    push (< self.punchtime self.maxpunchtime)
    goto 0x00016C
0x000168:
    push 0s
0x00016C:
    if !pop goto 0x000464
0x000170:
    self.punchtime = (+ self.punchtime 1s)
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0001B8
0x0001A0:
    push (< self.punches self.maxpunches)
    goto 0x0001BC
0x0001B8:
    push 0s
0x0001BC:
    if !pop goto 0x000344
0x0001C0:
    if !(bool (instance_exists[]:int32 (var 732s))) goto 0x00020C
0x0001D8:
    [obj_pressZ].visible = 0s
    push 7s
    push 732s
    stog.alarm[] = 0s
    stog.alarm[732s] = 1s
0x00020C:
    self.punches = (+ self.punches 1s)
    call (keyboard_clear[]:int32 (var 13s))
    if !(< self.punches self.maxpunches) goto 0x0002C0
0x000250:
    call (instance_create[]:int32 (var 716s) (+ (int32 self.mons):y (random[]:int32 (int32 self.mons):ht)) (+ (int32 self.mons):x (random[]:int32 self.wd)))
0x0002C0:
    if !(== self.punches self.maxpunches) goto 0x000344
0x0002D8:
    call (instance_create[]:int32 (var 717s) (+ (int32 self.mons):y (/ self.ht (double 2s))) (+ (int32 self.mons):x (/ self.wd (double 2s))))
0x000344:
    if (== self.punchtime self.maxpunchtime) goto 0x000374
0x00035C:
    push (== self.punches self.maxpunches)
    goto 0x000378
0x000374:
    push 1s
0x000378:
    if !pop goto 0x000464
0x00037C:
    if !(== self.punches 0s) goto 0x0003A0
0x000390:
    self.xxx = 1s
    goto 0x000464
0x0003A0:
    global.damagetimer = 10s
    self.punchtime = (+ self.maxpunchtime 1s)
    global.damage = (ceil[]:int32 (* global.damage (/ self.punches self.maxpunches)))
    pushenv (int32 self.mons) 0x000414
0x000404:
    self.takedamage = global.damage
0x000414:
    popenv 0x000404
0x000418:
    stog.hurtanim[(int32 global.mytarget)] = 1s
    if !(bool (instance_exists[]:int32 (var 732s))) goto 0x000464
0x00044C:
    pushenv 732s 0x000460
0x000454:
    call (instance_destroy[]:int32 )
0x000460:
    popenv 0x000454
0x000464:
    if !(== self.image_speed 0s) goto 0x0006BC
0x000478:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0006BC
0x000490:
    push -5s
    self.mons = (int32 global.mytarget):monsterinstance
    self.hspeed = 0s
    call (script_execute[]:int32 (var 162s))
    global.damage = self.damage
    global.damage = (+ global.damage (random[]:int32 (var 2s)))
    self.myx = (+ self.x (/ self.sprite_width (double 2s)))
    self.myperfectx = (+ 738.x (/ 738.sprite_width (double 2s)))
    self.bonusfactor = (abs[]:int32 (- self.myx self.myperfectx))
    if !(== self.bonusfactor 0s) goto 0x000598
0x00058C:
    self.bonusfactor = 1s
0x000598:
    global.stretch = (/ (- 738.sprite_width self.bonusfactor) 738.sprite_width)
    if !(<= self.bonusfactor 12s) goto 0x0005FC
0x0005D4:
    global.damage = (round[]:int32 (* global.damage 2.1d))
0x0005FC:
    if !(> self.bonusfactor 12s) goto 0x00063C
0x000610:
    global.damage = (round[]:int32 (* (* global.damage global.stretch) 2s))
0x00063C:
    self.image_speed = 0.4d
    call (instance_create[]:int32 (var 732s) (+ (int32 self.mons):y (/ self.ht (double 2s))) (+ (int32 self.mons):x (/ self.wd (double 2s))))
0x0006BC:
    if !(== self.xxx 1s) goto 0x000708
0x0006D0:
    global.damage = 0s
    stog.hurtanim[(int32 global.mytarget)] = 5s
    call (instance_destroy[]:int32 )
    exit
0x000708:
    if !(!= global.myfight 1s) goto 0x000728
0x00071C:
    call (instance_destroy[]:int32 )
0x000728:
    exit
