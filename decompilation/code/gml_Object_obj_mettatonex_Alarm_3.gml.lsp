0x000000:
    if !(<= (int32 self.mypart1):pause 0s) goto 0x0001B0
0x000020:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (+ self.y 100s) self.x)
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x000080
0x000070:
    self.dmg = global.damage
0x000080:
    popenv 0x000070
0x000084:
    self.shk = (instance_create[]:int32 (var 1669s) (var 0s) (var 0s))
    push self.mypart1
    stog.obj* = (int32 self.shk)
    call (snd_play[]:int32 (var 51s))
    push -5s
    push (int32 self.myself):monsterhp
    if !(> -5s (/ (int32 self.myself):monstermaxhp (double 2s))) goto 0x000134
0x000120:
    push (<= self.turns 12s)
    goto 0x000138
0x000134:
    push 0s
0x000138:
    if !pop goto 0x00016C
0x00013C:
    push 1s
    stog.pause* = (int32 self.mypart1)
    stog.alarm[8s] = 11s
    goto 0x000184
0x00016C:
    push 2s
    stog.pause* = (int32 self.mypart1)
0x000184:
    pushenv 402s 0x0001AC
0x00018C:
    self.curtype = 4s
    call (event_user[]:int32 (var 0s))
0x0001AC:
    popenv 0x00018C
0x0001B0:
    if !(== self.sha 0s) goto 0x0001D4
0x0001C4:
    self.sha = self.x
0x0001D4:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x000224
0x000204:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x000238
0x000224:
    self.shudder = (- self.shudder)
0x000238:
    if !(== self.shudder 0s) goto 0x000278
0x00024C:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x000278:
    stog.alarm[3s] = 2s
0x00028C:
    exit
