0x000000:
    if !(== self.murder 1s) goto 0x000028
0x000014:
    push (== self.md 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0000EC
0x000030:
    stog.monsterinstance[0s] = self.id
    global.mytarget = 0s
    stog.monsterhp[0s] = 900s
    stog.monstermaxhp[0s] = 900s
    self.hearts = 0s
    global.damage = 9999999999L
    self.d = (instance_create[]:int32 (var 189s) self.y self.x)
    push global.damage
    stog.takedamage* = (int32 self.d)
    self.md = 1s
0x0000EC:
    self.asgorex = (+ self.xstart self.shudder)
    self.shudder = (- self.shudder)
    if !(> self.shudder 0s) goto 0x000148
0x000130:
    self.shudder = (- self.shudder 3s)
0x000148:
    stog.alarm[0s] = 8s
    if !(< (abs[]:int32 self.shudder) 1s) goto 0x0001A4
0x000178:
    self.shudder = 0s
    self.con = 2s
    stog.alarm[0s] = -1s
0x0001A4:
    exit
