0x000000:
    if !(!= (int32 self.mypart1):pause 1s) goto 0x0001DC
0x000020:
    call (caster_free[]:int32 (var -3s))
    self.dmgwriter = (instance_create[]:int32 (var 189s) (+ self.y 200s) self.x)
    global.damage = self.takedamage
    push -5s
    global.damage = (+ (+ (int32 self.myself):monsterhp 4000s) (floor[]:int32 (random[]:int32 (var 3289s))))
    if !(>= (scr_murderlv[]:int32 ) 15s) goto 0x0000FC
0x0000CC:
    global.damage = (+ 900000 (floor[]:int32 (random[]:int32 (var 99999))))
0x0000FC:
    pushenv (int32 self.dmgwriter) 0x00011C
0x00010C:
    self.dmg = global.damage
0x00011C:
    popenv 0x00010C
0x000120:
    self.shk = (instance_create[]:int32 (var 1669s) (var 0s) (var 0s))
    push self.mypart1
    stog.obj* = (int32 self.shk)
    pushenv (int32 self.mypart1) 0x000198
0x000174:
    self.siner = 0s
    self.burston = 0s
    global.faceemotion = 6s
0x000198:
    popenv 0x000174
0x00019C:
    push 1s
    stog.pause* = (int32 self.mypart1)
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x0001DC:
    if !(== self.sha 0s) goto 0x000200
0x0001F0:
    self.sha = self.x
0x000200:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x000250
0x000230:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x000264
0x000250:
    self.shudder = (- self.shudder)
0x000264:
    if !(== self.shudder 0s) goto 0x0002A4
0x000278:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x0002A4:
    stog.alarm[3s] = 2s
0x0002B8:
    exit
