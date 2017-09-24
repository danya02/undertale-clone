0x000000:
    if !(!= self.image_index 1s) goto 0x0000F4
0x000014:
    pushenv (int32 self.mypart1) 0x000030
0x000024:
    call (instance_destroy[]:int32 )
0x000030:
    popenv 0x000024
0x000034:
    pushenv (int32 self.mypart2) 0x000050
0x000044:
    call (instance_destroy[]:int32 )
0x000050:
    popenv 0x000044
0x000054:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (- self.y 10s) (+ self.x 20s))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x0000BC
0x0000AC:
    self.dmg = global.damage
0x0000BC:
    popenv 0x0000AC
0x0000C0:
    self.image_index = 1s
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
