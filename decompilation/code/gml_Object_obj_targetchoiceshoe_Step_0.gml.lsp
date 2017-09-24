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
    if !(== self.image_speed 0s) goto 0x000364
0x0000DC:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 13s))) goto 0x000364
0x0000F4:
    push -5s
    self.mons = (int32 global.mytarget):monsterinstance
    self.hspeed = 0s
    call (script_execute[]:int32 (var 162s))
    global.damage = self.damage
    global.damage = (+ global.damage (random[]:int32 (var 2s)))
    self.myx = (+ self.x (/ self.sprite_width (double 2s)))
    self.myperfectx = (+ 738.x (/ 738.sprite_width (double 2s)))
    self.bonusfactor = (abs[]:int32 (- self.myx self.myperfectx))
    if !(== self.bonusfactor 0s) goto 0x0001FC
0x0001F0:
    self.bonusfactor = 1s
0x0001FC:
    global.stretch = (/ (- 738.sprite_width self.bonusfactor) 738.sprite_width)
    if !(<= self.bonusfactor 12s) goto 0x000260
0x000238:
    global.damage = (round[]:int32 (* global.damage 2.2d))
0x000260:
    if !(> self.bonusfactor 12s) goto 0x0002A0
0x000274:
    global.damage = (round[]:int32 (* (* global.damage global.stretch) 2s))
0x0002A0:
    pushenv (int32 self.mons) 0x0002C0
0x0002B0:
    self.takedamage = global.damage
0x0002C0:
    popenv 0x0002B0
0x0002C4:
    call (instance_create[]:int32 (var 733s) (- (int32 self.mons):y 5s) (- (+ (int32 self.mons):x (/ (int32 self.mons):sprite_width (double 2s))) 5s))
    stog.hurtanim[(int32 global.mytarget)] = 1s
    self.image_speed = 0.4d
0x000364:
    if !(!= global.myfight 1s) goto 0x000384
0x000378:
    call (instance_destroy[]:int32 )
0x000384:
    exit
