0x000000:
    if !(!= (int32 self.mypart1):pause 1s) goto 0x0000EC
0x000020:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x0000A0
0x000090:
    self.dmg = global.damage
0x0000A0:
    popenv 0x000090
0x0000A4:
    pushenv (int32 self.mypart1) 0x0000C0
0x0000B4:
    self.pause = 1s
0x0000C0:
    popenv 0x0000B4
0x0000C4:
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x0000EC:
    if !(== self.sha 0s) goto 0x000110
0x000100:
    self.sha = self.x
0x000110:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x000160
0x000140:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x000174
0x000160:
    self.shudder = (- self.shudder)
0x000174:
    if !(== self.shudder 0s) goto 0x0001B4
0x000188:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x0001B4:
    stog.alarm[3s] = 2s
0x0001C8:
    exit
