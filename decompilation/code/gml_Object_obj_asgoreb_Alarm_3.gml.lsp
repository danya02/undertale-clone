0x000000:
    push -5s
    if !(<= (- (int32 self.myself):monsterhp self.takedamage) 500s) goto 0x000184
0x000030:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (+ self.y 150s) self.x)
    push -5s
    global.fivedamage = (- (int32 self.myself):monsterhp 30s)
    if !(<= global.fivedamage 0s) goto 0x0000A8
0x00009C:
    global.fivedamage = 1s
0x0000A8:
    pushenv (int32 self.dmgwriter) 0x0000C8
0x0000B8:
    self.dmg = global.fivedamage
0x0000C8:
    popenv 0x0000B8
0x0000CC:
    call (instance_create[]:int32 (var 493s) (var 46s) (var 128s))
    call (caster_free[]:int32 (var -3s))
    [obj_purplegradienter].fade = 1s
    pushenv 484s 0x000124
0x000118:
    call (instance_destroy[]:int32 )
0x000124:
    popenv 0x000118
0x000128:
    call (snd_play[]:int32 (var 51s))
    pushenv (int32 self.mypart1) 0x000158
0x00014C:
    call (instance_destroy[]:int32 )
0x000158:
    popenv 0x00014C
0x00015C:
    pushenv 489s 0x000170
0x000164:
    call (instance_destroy[]:int32 )
0x000170:
    popenv 0x000164
0x000174:
    call (instance_destroy[]:int32 )
    goto 0x000324
0x000184:
    if !(!= (int32 self.mypart1):pause 1s) goto 0x000248
0x0001A4:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (+ self.y 150s) self.x)
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x000204
0x0001F4:
    self.dmg = global.damage
0x000204:
    popenv 0x0001F4
0x000208:
    push 1s
    stog.pause* = (int32 self.mypart1)
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x000248:
    if !(== self.sha 0s) goto 0x00026C
0x00025C:
    self.sha = self.x
0x00026C:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x0002BC
0x00029C:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x0002D0
0x0002BC:
    self.shudder = (- self.shudder)
0x0002D0:
    if !(== self.shudder 0s) goto 0x000310
0x0002E4:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x000310:
    stog.alarm[3s] = 2s
0x000324:
    exit
