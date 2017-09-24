0x000000:
    if !(!= self.image_index 1s) goto 0x000134
0x000014:
    self.stage = 1s
    pushenv (int32 self.mypart1) 0x00003C
0x000030:
    call (instance_destroy[]:int32 )
0x00003C:
    popenv 0x000030
0x000040:
    self.visible = 1s
    self.dmgwriter = (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x0000CC
0x0000BC:
    self.dmg = global.damage
0x0000CC:
    popenv 0x0000BC
0x0000D0:
    self.image_index = 1s
    call (snd_play[]:int32 self.hurtsound)
    self.x = self.xstart
    self.y = self.ystart
    self.image_yscale = 1s
    self.scalevalue = 0s
    self.gravity = 0s
0x000134:
    self.x = (+ self.x self.shudder)
    if !(< self.shudder 0s) goto 0x000184
0x000164:
    self.shudder = (- (+ self.shudder 2s))
    goto 0x000198
0x000184:
    self.shudder = (- self.shudder)
0x000198:
    if !(== self.shudder 0s) goto 0x0001CC
0x0001AC:
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x0001CC:
    stog.alarm[3s] = 2s
0x0001E0:
    exit
