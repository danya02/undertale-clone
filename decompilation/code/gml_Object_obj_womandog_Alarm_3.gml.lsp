0x000000:
    if !(!= self.image_index 1s) goto 0x0000EC
0x000014:
    pushenv (int32 self.mypart1) 0x000030
0x000024:
    call (instance_destroy[]:int32 )
0x000030:
    popenv 0x000024
0x000034:
    pushenv (int32 self.mypart2) 0x000050
0x000044:
    call (instance_destroy[]:int32 )
0x000050:
    popenv 0x000044
0x000054:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (+ self.y 10s) self.x)
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x0000B4
0x0000A4:
    self.dmg = global.damage
0x0000B4:
    popenv 0x0000A4
0x0000B8:
    self.image_index = 1s
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x0000EC:
    self.x = (+ self.x self.shudder)
    if !(< self.shudder 0s) goto 0x00013C
0x00011C:
    self.shudder = (- (+ self.shudder 2s))
    goto 0x000150
0x00013C:
    self.shudder = (- self.shudder)
0x000150:
    if !(== self.shudder 0s) goto 0x000184
0x000164:
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x000184:
    stog.alarm[3s] = 2s
0x000198:
    exit
