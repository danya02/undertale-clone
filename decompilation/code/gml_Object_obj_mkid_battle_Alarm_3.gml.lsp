0x000000:
    if !(== self.con 19s) goto 0x0000F8
0x000014:
    self.con = 20s
    self.dmgwriter = (instance_create[]:int32 (var 189s) (- self.y 24s) (- (+ self.x (/ self.sprite_width (double 2s))) 48s))
    global.damage = 1s
    pushenv (int32 self.dmgwriter) 0x0000B4
0x00008C:
    self.dmg = (+ 20000s (round[]:int32 (random[]:int32 (var 5965s))))
0x0000B4:
    popenv 0x00008C
0x0000B8:
    push 1s
    stog.pause* = (int32 self.mypart1)
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x0000F8:
    if !(== self.sha 0s) goto 0x00011C
0x00010C:
    self.sha = self.x
0x00011C:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x00016C
0x00014C:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x000180
0x00016C:
    self.shudder = (- self.shudder)
0x000180:
    if !(== self.shudder 0s) goto 0x0001C0
0x000194:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x0001C0:
    stog.alarm[3s] = 2s
0x0001D4:
    exit
