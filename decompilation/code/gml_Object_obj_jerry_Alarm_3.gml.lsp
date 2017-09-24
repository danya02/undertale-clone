0x000000:
    if !(!= self.sprite_index self.hurtgfx) goto 0x0000BC
0x000018:
    self.dmgwriter = (instance_create[]:int32 (var 189s) (+ self.y 80s) (+ self.x 10s))
    global.damage = self.takedamage
    pushenv (int32 self.dmgwriter) 0x000094
0x000070:
    self.dmg = (ceil[]:int32 (/ global.damage (double 5s)))
0x000094:
    popenv 0x000070
0x000098:
    self.sprite_index = self.hurtgfx
    call (snd_play[]:int32 self.hurtsound)
0x0000BC:
    self.x = (+ self.x self.shudder)
    if !(< self.shudder 0s) goto 0x00010C
0x0000EC:
    self.shudder = (- (+ self.shudder 2s))
    goto 0x000120
0x00010C:
    self.shudder = (- self.shudder)
0x000120:
    if !(== self.shudder 0s) goto 0x000154
0x000134:
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x000154:
    stog.alarm[3s] = 2s
0x000168:
    exit
