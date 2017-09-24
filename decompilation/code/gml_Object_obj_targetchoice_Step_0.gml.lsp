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
    if !(== self.xxx 1s) goto 0x0000C8
0x000090:
    global.damage = 0s
    stog.hurtanim[(int32 global.mytarget)] = 5s
    call (instance_destroy[]:int32 )
    exit
0x0000C8:
    push -5s
    self.mons = (int32 global.mytarget):monsterinstance
    self.ht = 100s
    self.wd = 100s
    if !(bool (instance_exists[]:int32 self.mons)) goto 0x000134
0x000118:
    push self.id
    stog.trgtest* = (int32 self.mons)
0x000134:
    pushenv (int32 self.mons) 0x00017C
0x000144:
    push self.ht
    stog.ht* = (int32 self.trgtest)
    push self.wd
    stog.wd* = (int32 self.trgtest)
0x00017C:
    popenv 0x000144
0x000180:
    if !(== self.image_speed 0s) goto 0x000410
0x000194:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x000410
0x0001AC:
    push -5s
    self.mons = (int32 global.mytarget):monsterinstance
    self.hspeed = 0s
    call (script_execute[]:int32 (var 162s))
    global.damage = self.damage
    global.damage = (+ global.damage (random[]:int32 (var 2s)))
    self.myx = (+ self.x (/ self.sprite_width (double 2s)))
    self.myperfectx = (+ 738.x (/ 738.sprite_width (double 2s)))
    self.bonusfactor = (abs[]:int32 (- self.myx self.myperfectx))
    if !(== self.bonusfactor 0s) goto 0x0002B4
0x0002A8:
    self.bonusfactor = 1s
0x0002B4:
    global.stretch = (/ (- 738.sprite_width self.bonusfactor) 738.sprite_width)
    if !(<= self.bonusfactor 12s) goto 0x000318
0x0002F0:
    global.damage = (round[]:int32 (* global.damage 2.2d))
0x000318:
    if !(> self.bonusfactor 12s) goto 0x000358
0x00032C:
    global.damage = (round[]:int32 (* (* global.damage global.stretch) 2s))
0x000358:
    pushenv (int32 self.mons) 0x000378
0x000368:
    self.takedamage = global.damage
0x000378:
    popenv 0x000368
0x00037C:
    call (instance_create[]:int32 (var 733s) (- (int32 self.mons):y 5s) (- (+ (int32 self.mons):x (/ self.wd (double 2s))) 5s))
    stog.hurtanim[(int32 global.mytarget)] = 1s
    self.image_speed = 0.4d
0x000410:
    if !(!= global.myfight 1s) goto 0x000430
0x000424:
    call (instance_destroy[]:int32 )
0x000430:
    exit
