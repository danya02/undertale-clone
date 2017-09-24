0x000000:
    if !(!= (int32 self.mypart1):pause 1s) goto 0x000128
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
    self.osh = (instance_create[]:int32 (var 1669s) (var 0s) (var 0s))
    push self.mypart1
    stog.obj* = (int32 self.osh)
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x000128:
    if !(== self.sha 0s) goto 0x00014C
0x00013C:
    self.sha = self.x
0x00014C:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x00019C
0x00017C:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x0001B0
0x00019C:
    self.shudder = (- self.shudder)
0x0001B0:
    if !(== self.shudder 0s) goto 0x0001F0
0x0001C4:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x0001F0:
    stog.alarm[3s] = 2s
0x000204:
    exit
