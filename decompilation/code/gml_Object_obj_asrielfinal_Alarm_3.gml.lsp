0x000000:
    if !(!= (int32 self.mypart1):pause 1s) goto 0x0000CC
0x000020:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (+ self.y 80s) (- self.x 50s))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x000088
0x000078:
    self.dmg = global.damage
0x000088:
    popenv 0x000078
0x00008C:
    push 1s
    stog.pause* = (int32 self.mypart1)
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x0000CC:
    if !(== self.sha 0s) goto 0x0000F0
0x0000E0:
    self.sha = self.x
0x0000F0:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x000140
0x000120:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x000154
0x000140:
    self.shudder = (- self.shudder)
0x000154:
    if !(== self.shudder 0s) goto 0x000194
0x000168:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x000194:
    stog.alarm[3s] = 2s
0x0001A8:
    exit
