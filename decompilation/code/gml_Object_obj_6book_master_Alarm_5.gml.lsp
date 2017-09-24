0x000000:
    if !(== self.CoolHell 0s) goto 0x0001A0
0x000014:
    self.ry = 180s
    self.rx = (choose[]:int32 (var 430s) (var 100s))
    self.alrnum = (+ self.alrnum 1s)
    if !(< self.alrnum 4s) goto 0x0000D0
0x00006C:
    call (instance_create[]:int32 (var 1622s) self.ry self.rx)
    stog.alarm[5s] = (+ 55s (random[]:int32 (var 10s)))
    call (event_user[]:int32 (var 1s))
    goto 0x0001A0
0x0000D0:
    if !(== (instance_exists[]:int32 (var 1623s)) 0s) goto 0x0001A0
0x0000EC:
    self.CoolHell = 1s
    self.act = (instance_create[]:int32 (var 1623s) self.ry self.rx)
    pushenv (int32 self.act) 0x000188
0x000130:
    self.y = (+ self.y (+ (/ self.sprite_height (double 2s)) 10s))
    self.x = (+ self.x (/ self.sprite_width (double 2s)))
0x000188:
    popenv 0x000130
0x00018C:
    stog.alarm[5s] = -1s
0x0001A0:
    exit
