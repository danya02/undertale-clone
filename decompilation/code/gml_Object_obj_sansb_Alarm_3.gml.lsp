0x000000:
    if !(!= (int32 self.mypart1):pause 1s) goto 0x0000E0
0x000020:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (- self.y 50s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    global.damage = 0s
    pushenv (int32 self.dmgwriter) 0x000098
0x00008C:
    self.dmg = 0s
0x000098:
    popenv 0x00008C
0x00009C:
    push 1s
    stog.pause* = (int32 self.mypart1)
    self.hit_try = (+ self.hit_try 1s)
    stog.alarm[8s] = 11s
0x0000E0:
    if !(== self.sha 0s) goto 0x000104
0x0000F4:
    self.sha = self.x
0x000104:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x000154
0x000134:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x000168
0x000154:
    self.shudder = (- self.shudder)
0x000168:
    if !(== self.shudder 0s) goto 0x0001A8
0x00017C:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x0001A8:
    stog.alarm[3s] = 2s
0x0001BC:
    exit
