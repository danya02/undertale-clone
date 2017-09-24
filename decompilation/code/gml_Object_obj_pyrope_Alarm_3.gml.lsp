0x000000:
    if !(!= (int32 self.mypart1):hurt 1s) goto 0x0000F0
0x000020:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (- (+ self.y self.ht) 60s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x0000AC
0x00009C:
    self.dmg = global.damage
0x0000AC:
    popenv 0x00009C
0x0000B0:
    push 1s
    stog.hurt* = (int32 self.mypart1)
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x0000F0:
    if !(== self.sha 0s) goto 0x000114
0x000104:
    self.sha = self.x
0x000114:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x000164
0x000144:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x000178
0x000164:
    self.shudder = (- self.shudder)
0x000178:
    if !(== self.shudder 0s) goto 0x0001B8
0x00018C:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x0001B8:
    stog.alarm[3s] = 2s
0x0001CC:
    exit
