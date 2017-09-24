0x000000:
    if !(!= (int32 self.mypart1):pause 1s) goto 0x0000E4
0x000020:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x0000A0
0x000090:
    self.dmg = global.damage
0x0000A0:
    popenv 0x000090
0x0000A4:
    push 1s
    stog.pause* = (int32 self.mypart1)
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x0000E4:
    if !(== self.sha 0s) goto 0x000108
0x0000F8:
    self.sha = self.x
0x000108:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x000158
0x000138:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x00016C
0x000158:
    self.shudder = (- self.shudder)
0x00016C:
    if !(== self.shudder 0s) goto 0x0001AC
0x000180:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x0001AC:
    stog.alarm[3s] = 2s
0x0001C0:
    exit
