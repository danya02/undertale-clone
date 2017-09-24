0x000000:
    if !(!= self.sprite_index 190s) goto 0x0000B0
0x000014:
    self.dmgwriter = (instance_create[]:int32 (var 189s) self.y (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x00008C
0x00007C:
    self.dmg = global.damage
0x00008C:
    popenv 0x00007C
0x000090:
    self.sprite_index = 190s
    call (snd_play[]:int32 self.hurtsound)
0x0000B0:
    self.x = (+ self.x self.shudder)
    if !(< self.shudder 0s) goto 0x000100
0x0000E0:
    self.shudder = (- (+ self.shudder 2s))
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
