0x000000:
    if !(!= (int32 self.mypart1):pause 1s) goto 0x000138
0x000020:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (+ self.y self.ht) (+ self.x 10s))
    self.takedamage = (ceil[]:int32 (/ self.takedamage (double 3s)))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x0000B0
0x0000A0:
    self.dmg = global.damage
0x0000B0:
    popenv 0x0000A0
0x0000B4:
    push 1s
    stog.pause* = (int32 self.mypart1)
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
    self.shker = (instance_create[]:int32 (var 1669s) (var 0s) (var 0s))
    push self.mypart1
    stog.obj* = (int32 self.shker)
0x000138:
    if !(== self.sha 0s) goto 0x00015C
0x00014C:
    self.sha = self.x
0x00015C:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x0001AC
0x00018C:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x0001C0
0x0001AC:
    self.shudder = (- self.shudder)
0x0001C0:
    if !(== self.shudder 0s) goto 0x000200
0x0001D4:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x000200:
    stog.alarm[3s] = 2s
0x000214:
    exit
