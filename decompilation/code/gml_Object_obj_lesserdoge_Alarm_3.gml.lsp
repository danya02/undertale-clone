0x000000:
    if !(!= self.sprite_index self.hurtsprite) goto 0x0000CC
0x000018:
    self.dmgwriter = (instance_create[]:int32 (var 189s) self.y (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x000090
0x000080:
    self.dmg = global.damage
0x000090:
    popenv 0x000080
0x000094:
    self.sprite_index = self.hurtsprite
    call (snd_play[]:int32 self.hurtsound)
    stog.alarm[8s] = 11s
0x0000CC:
    self.x = (+ self.x self.shudder)
    if !(< self.shudder 0s) goto 0x00011C
0x0000FC:
    self.shudder = (- (+ self.shudder 2s))
    goto 0x000130
0x00011C:
    self.shudder = (- self.shudder)
0x000130:
    if !(== self.shudder 0s) goto 0x000164
0x000144:
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x000164:
    stog.alarm[3s] = 2s
0x000178:
    exit
