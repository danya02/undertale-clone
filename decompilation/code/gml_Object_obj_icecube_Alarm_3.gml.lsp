0x000000:
    if !(!= self.sprite_index self.hurtgfx) goto 0x0000C0
0x000018:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (+ self.y 80s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x000098
0x000088:
    self.dmg = global.damage
0x000098:
    popenv 0x000088
0x00009C:
    self.sprite_index = self.hurtgfx
    call (snd_play[]:int32 self.hurtsound)
0x0000C0:
    self.x = (+ self.x self.shudder)
    if !(< self.shudder 0s) goto 0x000110
0x0000F0:
    self.shudder = (- (+ self.shudder 2s))
    goto 0x000124
0x000110:
    self.shudder = (- self.shudder)
0x000124:
    if !(== self.shudder 0s) goto 0x000158
0x000138:
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x000158:
    stog.alarm[3s] = 2s
0x00016C:
    exit
