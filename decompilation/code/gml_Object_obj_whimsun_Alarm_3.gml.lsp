0x000000:
    if !(!= self.sprite_index 181s) goto 0x0000F0
0x000014:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (+ self.y 80s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x000094
0x000084:
    self.dmg = global.damage
0x000094:
    popenv 0x000084
0x000098:
    self.sprite_index = 181s
    call (snd_play[]:int32 self.hurtsound)
    self.x = self.xstart
    self.y = self.ystart
    call (path_end[]:int32 )
    self.gravity = 0s
0x0000F0:
    self.x = (+ self.x self.shudder)
    if !(< self.shudder 0s) goto 0x000140
0x000120:
    self.shudder = (- (+ self.shudder 2s))
    goto 0x000154
0x000140:
    self.shudder = (- self.shudder)
0x000154:
    if !(== self.shudder 0s) goto 0x000188
0x000168:
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x000188:
    stog.alarm[3s] = 2s
0x00019C:
    exit
