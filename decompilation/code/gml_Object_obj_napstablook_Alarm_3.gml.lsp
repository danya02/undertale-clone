0x000000:
    if !(== self.shudder 16s) goto 0x000098
0x000014:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (- self.y 20s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x000094
0x000084:
    self.dmg = global.damage
0x000094:
    popenv 0x000084
0x000098:
    self.shudder = (- self.shudder 2s)
    if !(== self.shudder 0s) goto 0x0000E4
0x0000C4:
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x0000E4:
    stog.alarm[3s] = 2s
0x0000F8:
    exit