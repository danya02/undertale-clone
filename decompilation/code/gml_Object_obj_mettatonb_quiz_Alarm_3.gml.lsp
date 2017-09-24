0x000000:
    if !(== self.hurta 0s) goto 0x0000CC
0x000014:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x000094
0x000084:
    self.dmg = global.damage
0x000094:
    popenv 0x000084
0x000098:
    self.hurta = 1s
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x0000CC:
    if !(< self.shudder 0s) goto 0x000100
0x0000E0:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x000114
0x000100:
    self.shudder = (- self.shudder)
0x000114:
    if !(== self.shudder 0s) goto 0x000148
0x000128:
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x000148:
    stog.alarm[3s] = 2s
0x00015C:
    exit
