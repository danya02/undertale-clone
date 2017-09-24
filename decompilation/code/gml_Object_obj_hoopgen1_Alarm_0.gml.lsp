0x000000:
    self.r = (+ (round[]:int32 (random[]:int32 (var 1s))) 2s)
    call (script_execute[]:int32 (var 2s) self.r (var 125s))
    self.x = self.xx
    self.y = self.yy
    if !(== self.bullettype 0s) goto 0x000108
0x000080:
    self.iii = (instance_create[]:int32 (var 616s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x000104
0x0000C0:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iii)
    push 0s
    stog.bullettype* = (int32 self.iii)
0x000104:
    goto 0x0001B8
0x000108:
    self.r = (round[]:int32 (random[]:int32 (var 3s)))
    call (script_execute[]:int32 (var 8s) self.r (var 125s))
    self.iii = (instance_create[]:int32 (var 620s) self.y self.x)
    if !(bool (instance_exists[]:int32 self.iii)) goto 0x0001B8
0x00018C:
    push -5s
    push (int32 self.myself):monsteratk
    stog.dmg* = (int32 self.iii)
0x0001B8:
    stog.alarm[0s] = self.firingspeed
0x0001D0:
    exit
