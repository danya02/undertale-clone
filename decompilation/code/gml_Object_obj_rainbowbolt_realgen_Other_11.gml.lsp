0x000000:
    pushenv 1582s 0x000014
0x000008:
    call (instance_destroy[]:int32 )
0x000014:
    popenv 0x000008
0x000018:
    self.shk = (instance_create[]:int32 (var 1582s) (var 0s) (var 0s))
    push 8s
    stog.shakex* = (int32 self.shk)
    push 8s
    stog.shakey* = (int32 self.shk)
    if !(== self.h_mode 0s) goto 0x00015C
0x000084:
    if !(== self.hit 0s) goto 0x0000CC
0x000098:
    call (caster_play_l[]:int32 (var 0.75d) (var 0.8d) self.lithit)
0x0000CC:
    if !(== self.hit 3s) goto 0x000114
0x0000E0:
    call (caster_play_l[]:int32 (var 0.65d) (var 0.8d) self.lithit2)
0x000114:
    if !(== self.hit 5s) goto 0x00015C
0x000128:
    call (caster_play_l[]:int32 (var 0.9d) (var 0.9d) self.lithit)
0x00015C:
    if !(== self.h_mode 1s) goto 0x0002D8
0x000170:
    if !(== self.hit 0s) goto 0x0001B8
0x000184:
    call (caster_play_l[]:int32 (var 0.6d) (var 0.8d) self.lithit)
0x0001B8:
    if !(== self.hit 1s) goto 0x000200
0x0001CC:
    call (caster_play_l[]:int32 (var 0.65d) (var 0.8d) self.lithit2)
0x000200:
    if !(== self.hit 2s) goto 0x000248
0x000214:
    call (caster_play_l[]:int32 (var 0.7d) (var 0.8d) self.lithit)
0x000248:
    if !(== self.hit 3s) goto 0x000290
0x00025C:
    call (caster_play_l[]:int32 (var 0.75d) (var 0.8d) self.lithit2)
0x000290:
    if !(== self.hit 4s) goto 0x0002D8
0x0002A4:
    call (caster_play_l[]:int32 (var 0.8d) (var 0.8d) self.lithit)
0x0002D8:
    self.hit = (+ self.hit 1s)
0x0002F0:
    exit
