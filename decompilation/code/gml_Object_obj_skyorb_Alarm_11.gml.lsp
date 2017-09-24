0x000000:
    self.type = (choose[]:int32 (var 1s) (var 0s))
    call (snd_play[]:int32 (var 30s))
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    if !(== self.type 0s) goto 0x000094
0x00006C:
    self.cc = (instance_create[]:int32 (var 375s) self.y self.x)
0x000094:
    if !(== self.type 1s) goto 0x0000D0
0x0000A8:
    self.cc = (instance_create[]:int32 (var 376s) self.y self.x)
0x0000D0:
    push self.dmg
    stog.dmg* = (int32 self.cc)
    call (instance_destroy[]:int32 )
0x0000F8:
    exit
