0x000000:
    if !(!= (int32 self.mypart1):pause 1s) goto 0x0000C4
0x000020:
    self.dmgwriter = (instance_create[]:int32 (var 189s) self.y self.x)
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x000078
0x000068:
    self.dmg = global.damage
0x000078:
    popenv 0x000068
0x00007C:
    pushenv (int32 self.mypart1) 0x000098
0x00008C:
    self.pause = 1s
0x000098:
    popenv 0x00008C
0x00009C:
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x0000C4:
    if !(== self.sha 0s) goto 0x0000E8
0x0000D8:
    self.sha = self.x
0x0000E8:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x000138
0x000118:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x00014C
0x000138:
    self.shudder = (- self.shudder)
0x00014C:
    if !(== self.shudder 0s) goto 0x00018C
0x000160:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x00018C:
    stog.alarm[3s] = 2s
0x0001A0:
    exit
