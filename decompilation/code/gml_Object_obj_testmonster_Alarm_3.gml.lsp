0x000000:
    if !(!= self.image_index 1s) goto 0x00010C
0x000014:
    pushenv (int32 self.mypart1) 0x000030
0x000024:
    call (instance_destroy[]:int32 )
0x000030:
    popenv 0x000024
0x000034:
    pushenv (int32 self.mypart2) 0x000050
0x000044:
    call (instance_destroy[]:int32 )
0x000050:
    popenv 0x000044
0x000054:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x0000D4
0x0000C4:
    self.dmg = global.damage
0x0000D4:
    popenv 0x0000C4
0x0000D8:
    self.image_index = 1s
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x00010C:
    self.x = (+ self.x self.shudder)
    if !(< self.shudder 0s) goto 0x00015C
0x00013C:
    self.shudder = (- (+ self.shudder 2s))
    goto 0x000170
0x00015C:
    self.shudder = (- self.shudder)
0x000170:
    if !(== self.shudder 0s) goto 0x0001A4
0x000184:
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x0001A4:
    stog.alarm[3s] = 2s
0x0001B8:
    exit
