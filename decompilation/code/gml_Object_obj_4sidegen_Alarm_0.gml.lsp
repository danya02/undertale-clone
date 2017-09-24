0x000000:
    call (script_execute[]:int32 (var 0s) (var 0s) (floor[]:int32 (random[]:int32 (var 4s))) (var 126s))
    self.x = self.xx
    self.y = self.yy
    if !(== self.bullettype 0s) goto 0x000158
0x000070:
    call (script_execute[]:int32 (var 50s) (var 14s) (floor[]:int32 (random[]:int32 (var 4s))) (var 126s))
    self.x = self.xx
    self.y = self.yy
    self.iii = (instance_create[]:int32 (var 646s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x000158
0x00010C:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iii)
    pushenv (int32 self.iii) 0x000154
0x000148:
    self.parent = 1s
0x000154:
    popenv 0x000148
0x000158:
    if !(== self.bullettype 1s) goto 0x000254
0x00016C:
    call (script_execute[]:int32 (var 0s) (var 14s) (floor[]:int32 (random[]:int32 (var 4s))) (var 127s))
    self.x = self.xx
    self.y = self.yy
    self.iii = (instance_create[]:int32 (var 647s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x000254
0x000208:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iii)
    pushenv (int32 self.iii) 0x000250
0x000244:
    self.parent = 1s
0x000250:
    popenv 0x000244
0x000254:
    stog.alarm[0s] = self.firingspeed
0x00026C:
    exit
