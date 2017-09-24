0x000000:
    if !(!= self.image_index 1s) goto 0x000028
0x000014:
    push (!= self.image_index 2s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0001AC
0x000030:
    pushenv (int32 self.mypart1) 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    popenv 0x000040
0x000050:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (+ self.y 80s) self.x)
    push 1s
    stog.negative* = (int32 self.dmgwriter)
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x0000C8
0x0000B8:
    self.dmg = global.damage
0x0000C8:
    popenv 0x0000B8
0x0000CC:
    push -5s
    if !(< (- (int32 self.myself):monsterhp self.takedamage) 1s) goto 0x000110
0x0000FC:
    push (== self.died 0s)
    goto 0x000114
0x000110:
    push 0s
0x000114:
    if !pop goto 0x000124
0x000118:
    self.tempdie = 1s
0x000124:
    if !(== self.tempdie 1s) goto 0x000158
0x000138:
    self.shudder = 16s
    call (caster_free[]:int32 global.batmusic)
0x000158:
    self.image_index = 1s
    if !(== self.died 1s) goto 0x000184
0x000178:
    self.image_index = 2s
0x000184:
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x0001AC:
    if !(== self.sha 0s) goto 0x0001D0
0x0001C0:
    self.sha = self.x
0x0001D0:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x000220
0x000200:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x000234
0x000220:
    self.shudder = (- self.shudder)
0x000234:
    if !(== self.shudder 0s) goto 0x000274
0x000248:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x000274:
    stog.alarm[3s] = 2s
    if !(== self.tempdie 1s) goto 0x0002B0
0x00029C:
    stog.alarm[3s] = 4s
0x0002B0:
    exit
