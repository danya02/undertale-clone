0x000000:
    if !(!= (int32 self.mypart1):pause 1s) goto 0x0000F4
0x000020:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
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
    stog.alarm[8s] = 11s
0x0000F4:
    if !(== self.sha 0s) goto 0x000118
0x000108:
    self.sha = self.x
0x000118:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x000168
0x000148:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x00017C
0x000168:
    self.shudder = (- self.shudder)
0x00017C:
    if !(== self.shudder 0s) goto 0x0001BC
0x000190:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x0001BC:
    stog.alarm[3s] = 2s
0x0001D0:
    exit
