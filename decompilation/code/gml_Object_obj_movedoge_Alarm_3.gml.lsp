0x000000:
    if !(!= self.image_index 1s) goto 0x000144
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
    pushenv (int32 self.mypart3) 0x000070
0x000064:
    call (instance_destroy[]:int32 )
0x000070:
    popenv 0x000064
0x000074:
    pushenv (int32 self.mypart4) 0x000090
0x000084:
    call (instance_destroy[]:int32 )
0x000090:
    popenv 0x000084
0x000094:
    self.dmgwriter = (instance_create[]:int32 (var 189s) self.y (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x00010C
0x0000FC:
    self.dmg = global.damage
0x00010C:
    popenv 0x0000FC
0x000110:
    self.image_index = 1s
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x000144:
    self.x = (+ self.x self.shudder)
    if !(< self.shudder 0s) goto 0x000194
0x000174:
    self.shudder = (- (+ self.shudder 2s))
    goto 0x0001A8
0x000194:
    self.shudder = (- self.shudder)
0x0001A8:
    if !(== self.shudder 0s) goto 0x0001DC
0x0001BC:
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x0001DC:
    stog.alarm[3s] = 2s
0x0001F0:
    exit
