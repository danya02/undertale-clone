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
    if !(== self.image_speed 0s) goto 0x0003BC
0x0000DC:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x0003BC
0x0000F4:
    self.i = 0s
    if !(< self.i 3s) goto 0x0003BC
0x000114:
    push -5s
    if !(== (int32 self.i):monster 1s) goto 0x0003A0
0x000138:
    push -5s
    self.mons = (int32 self.i):monsterinstance
    self.hspeed = 0s
    call (script_execute[]:int32 (var 162s))
    global.damage = self.damage
    global.damage = (+ global.damage (random[]:int32 (var 2s)))
    self.myx = (+ self.x (/ self.sprite_width (double 2s)))
    self.myperfectx = (+ 738.x (/ 738.sprite_width (double 2s)))
    self.bonusfactor = (abs[]:int32 (- self.myx self.myperfectx))
    if !(== self.bonusfactor 0s) goto 0x000240
0x000234:
    self.bonusfactor = 1s
0x000240:
    global.stretch = (/ (- 738.sprite_width self.bonusfactor) 738.sprite_width)
    if !(<= self.bonusfactor 12s) goto 0x0002A4
0x00027C:
    global.damage = (round[]:int32 (* global.damage 2.2d))
0x0002A4:
    if !(> self.bonusfactor 12s) goto 0x0002E4
0x0002B8:
    global.damage = (round[]:int32 (* (* global.damage global.stretch) 2s))
0x0002E4:
    push global.damage
    stog.takedamage* = (int32 self.mons)
    call (instance_create[]:int32 (var 733s) (- (int32 self.mons):y 5s) (- (+ (int32 self.mons):x (/ (int32 self.mons):sprite_width (double 2s))) 5s))
    stog.hurtanim[(int32 self.i)] = 1s
    self.image_speed = 0.4d
0x0003A0:
    self.i = (+ self.i 1s)
    goto 0x000100
0x0003BC:
    if !(!= global.myfight 1s) goto 0x0003DC
0x0003D0:
    call (instance_destroy[]:int32 )
0x0003DC:
    exit
