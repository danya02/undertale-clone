0x000000:
    if !(!= (int32 self.mypart1):pause 1s) goto 0x0000F8
0x000020:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x00009C
0x000090:
    self.dmg = 0s
0x00009C:
    popenv 0x000090
0x0000A0:
    push 1s
    stog.special* = (int32 self.dmgwriter)
    push 1s
    stog.pause* = (int32 self.mypart1)
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x0000F8:
    if !(== self.sha 0s) goto 0x00011C
0x00010C:
    self.sha = self.x
0x00011C:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x00016C
0x00014C:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x000180
0x00016C:
    self.shudder = (- self.shudder)
0x000180:
    if !(== self.shudder 0s) goto 0x0001C0
0x000194:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x0001C0:
    stog.alarm[3s] = 2s
0x0001D4:
    exit
