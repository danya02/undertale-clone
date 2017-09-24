0x000000:
    if !(!= self.image_index 1s) goto 0x0000E4
0x000014:
    push -5s
    self.prevhp = (int32 self.myself):monsterhp
    pushenv (int32 self.mypart1) 0x000050
0x000044:
    call (instance_destroy[]:int32 )
0x000050:
    popenv 0x000044
0x000054:
    self.dogignore = 0s
    self.dmgwriter = (instance_create[]:int32 (var 189s) (+ self.y 150s) self.x)
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x0000C0
0x0000B0:
    self.dmg = global.damage
0x0000C0:
    popenv 0x0000B0
0x0000C4:
    self.image_index = 1s
    call (snd_play[]:int32 (var 51s))
0x0000E4:
    self.x = (+ self.x self.shudder)
    if !(< self.shudder 0s) goto 0x000134
0x000114:
    self.shudder = (- (+ self.shudder 2s))
    goto 0x000148
0x000134:
    self.shudder = (- self.shudder)
0x000148:
    if !(== self.shudder 0s) goto 0x00017C
0x00015C:
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x00017C:
    stog.alarm[3s] = 2s
0x000190:
    exit
