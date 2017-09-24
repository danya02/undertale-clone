0x000000:
    if !(!= (int32 self.mypart1):pause 1s) goto 0x0000E8
0x000020:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (+ self.y 160s) self.x)
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x000080
0x000070:
    self.dmg = global.damage
0x000080:
    popenv 0x000070
0x000084:
    push 1s
    stog.pause* = (int32 self.mypart1)
    self.asleep = 0s
    push 0s
    stog.asleep* = (int32 self.mypart1)
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x0000E8:
    if !(== self.sha 0s) goto 0x00010C
0x0000FC:
    self.sha = self.x
0x00010C:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x00015C
0x00013C:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x000170
0x00015C:
    self.shudder = (- self.shudder)
0x000170:
    if !(== self.shudder 0s) goto 0x0001B0
0x000184:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x0001B0:
    stog.alarm[3s] = 2s
0x0001C4:
    exit
