0x000000:
    if !(!= (int32 self.mypart1):pause 1s) goto 0x000204
0x000020:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (+ self.y 150s) self.x)
    global.damage = self.takedamage
    global.damage = (* global.damage 21s)
    self.takedamage = (* self.takedamage 21s)
    if !(< self.takedamage 600s) goto 0x0000DC
0x0000A4:
    self.takedamage = (+ 600s (floor[]:int32 (random[]:int32 (var 67s))))
    global.damage = self.takedamage
0x0000DC:
    pushenv (int32 self.dmgwriter) 0x0000FC
0x0000EC:
    self.dmg = global.damage
0x0000FC:
    popenv 0x0000EC
0x000100:
    self.shk = (instance_create[]:int32 (var 1669s) (var 0s) (var 0s))
    push self.mypart1
    stog.obj* = (int32 self.shk)
    push -5s
    if !(<= (- (int32 self.myself):monsterhp self.takedamage) 0s) goto 0x0001C4
0x000174:
    call (caster_free[]:int32 (var -3s))
    global.faceemotion = 0s
    push 2s
    stog.facetype* = (int32 self.mypart1)
    push 5s
    stog.shaketime* = (int32 self.shk)
0x0001C4:
    push 1s
    stog.pause* = (int32 self.mypart1)
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x000204:
    if !(== self.sha 0s) goto 0x000228
0x000218:
    self.sha = self.x
0x000228:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x000278
0x000258:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x00028C
0x000278:
    self.shudder = (- self.shudder)
0x00028C:
    if !(== self.shudder 0s) goto 0x0002CC
0x0002A0:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x0002CC:
    stog.alarm[3s] = 2s
0x0002E0:
    exit
