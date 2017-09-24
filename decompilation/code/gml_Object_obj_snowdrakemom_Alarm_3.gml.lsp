0x000000:
    if !(!= (int32 self.mypart1):pause 1s) goto 0x000124
0x000020:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (+ self.y 20s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    global.damage = 0s
    pushenv (int32 self.dmgwriter) 0x000098
0x00008C:
    self.dmg = 0s
0x000098:
    popenv 0x00008C
0x00009C:
    push 1s
    stog.special* = (int32 self.dmgwriter)
    push 1s
    stog.pause* = (int32 self.mypart1)
    call (snd_play[]:int32 (var 51s))
    push -5s
    stog.monsterhp[(int32 self.myself)] = (int32 self.myself):monstermaxhp
    stog.alarm[8s] = 11s
0x000124:
    if !(== self.sha 0s) goto 0x000148
0x000138:
    self.sha = self.x
0x000148:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x000198
0x000178:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x0001AC
0x000198:
    self.shudder = (- self.shudder)
0x0001AC:
    if !(== self.shudder 0s) goto 0x0001EC
0x0001C0:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x0001EC:
    stog.alarm[3s] = 2s
0x000200:
    exit
