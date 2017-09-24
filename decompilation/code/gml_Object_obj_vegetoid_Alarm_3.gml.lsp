0x000000:
    if !(!= self.sprite_index 192s) goto 0x0000B8
0x000014:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (+ self.y 80s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x000094
0x000084:
    self.dmg = global.damage
0x000094:
    popenv 0x000084
0x000098:
    self.sprite_index = 192s
    call (snd_play[]:int32 self.hurtsound)
0x0000B8:
    self.x = (+ self.x self.shudder)
    if !(< self.shudder 0s) goto 0x000108
0x0000E8:
    self.shudder = (- (+ self.shudder 2s))
    goto 0x00011C
0x000108:
    self.shudder = (- self.shudder)
0x00011C:
    if !(== self.shudder 0s) goto 0x000150
0x000130:
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x000150:
    stog.alarm[3s] = 2s
0x000164:
    exit
