0x000000:
    if !(!= (int32 self.mypart1):pause 1s) goto 0x000104
0x000020:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (+ self.y 90s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    push -30s
    stog.depth* = (int32 self.dmgwriter)
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x0000C0
0x0000A8:
    self.dmg = -100s
    self.special = 1s
0x0000C0:
    popenv 0x0000A8
0x0000C4:
    push 1s
    stog.pause* = (int32 self.mypart1)
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x000104:
    if !(== self.sha 0s) goto 0x000128
0x000118:
    self.sha = self.x
0x000128:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x000178
0x000158:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x00018C
0x000178:
    self.shudder = (- self.shudder)
0x00018C:
    if !(== self.shudder 0s) goto 0x0001CC
0x0001A0:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x0001CC:
    stog.alarm[3s] = 2s
0x0001E0:
    exit
