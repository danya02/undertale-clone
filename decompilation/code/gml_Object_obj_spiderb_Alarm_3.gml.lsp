0x000000:
    if !(!= (int32 self.mypart1):hurt 1s) goto 0x0000D0
0x000020:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (- (+ self.y self.ht) 60s) self.x)
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x00008C
0x00007C:
    self.dmg = global.damage
0x00008C:
    popenv 0x00007C
0x000090:
    push 1s
    stog.hurt* = (int32 self.mypart1)
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x0000D0:
    if !(== self.sha 0s) goto 0x0000F4
0x0000E4:
    self.sha = self.x
0x0000F4:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x000144
0x000124:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x000158
0x000144:
    self.shudder = (- self.shudder)
0x000158:
    if !(== self.shudder 0s) goto 0x000198
0x00016C:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x000198:
    stog.alarm[3s] = 2s
0x0001AC:
    exit
