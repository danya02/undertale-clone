0x000000:
    if !(!= self.image_index 1s) goto 0x0000D8
0x000014:
    pushenv (int32 self.mypart1) 0x000030
0x000024:
    call (instance_destroy[]:int32 )
0x000030:
    popenv 0x000024
0x000034:
    self.dogignore = 0s
    self.dmgwriter = (instance_create[]:int32 (var 189s) self.y (+ self.x 10s))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x0000A0
0x000090:
    self.dmg = global.damage
0x0000A0:
    popenv 0x000090
0x0000A4:
    self.image_index = 1s
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x0000D8:
    self.x = (+ self.x self.shudder)
    if !(< self.shudder 0s) goto 0x000128
0x000108:
    self.shudder = (- (+ self.shudder 2s))
    goto 0x00013C
0x000128:
    self.shudder = (- self.shudder)
0x00013C:
    if !(== self.shudder 0s) goto 0x000170
0x000150:
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x000170:
    stog.alarm[3s] = 2s
0x000184:
    exit
