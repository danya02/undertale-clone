0x000000:
    if !(== self.con 19s) goto 0x0000BC
0x000014:
    self.con = 20s
    self.dmgwriter = (instance_create[]:int32 (var 189s) (- self.y 24s) self.x)
    global.damage = 1s
    pushenv (int32 self.dmgwriter) 0x000078
0x00006C:
    self.dmg = 1s
0x000078:
    popenv 0x00006C
0x00007C:
    push 1s
    stog.pause* = (int32 self.mypart1)
    call (snd_play[]:int32 (var 51s))
    stog.alarm[8s] = 11s
0x0000BC:
    if !(== self.sha 0s) goto 0x0000E0
0x0000D0:
    self.sha = self.x
0x0000E0:
    self.x = (+ self.sha self.shudder)
    if !(< self.shudder 0s) goto 0x000130
0x000110:
    self.shudder = (- (+ self.shudder 1s))
    goto 0x000144
0x000130:
    self.shudder = (- self.shudder)
0x000144:
    if !(== self.shudder 0s) goto 0x000184
0x000158:
    self.sha = 0s
    stog.hurtanim[(int32 self.myself)] = 2s
    exit
0x000184:
    stog.alarm[3s] = 2s
0x000198:
    exit
