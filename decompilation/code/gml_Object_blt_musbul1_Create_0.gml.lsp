0x000000:
    self.dmg = 7s
    self.image_speed = 0.2d
    pushenv 259s 0x000100
0x000028:
    if !(== self.emotion 0s) goto 0x0000AC
0x00003C:
    self.i = (choose[]:int32 (var 2s) (var 1s) (var 0s))
    push (var 0.7d)
    call (caster_play[]:int32 (var 0.5d) -1s (int32 self.i):badnote)
    goto 0x000100
0x0000AC:
    self.i = (floor[]:int32 (random[]:int32 (var 6s)))
    push (var 1s)
    call (caster_play[]:int32 (var 1s) -1s (int32 self.i):note)
0x000100:
    popenv 0x000028
0x000104:
    if !(== 259.emotion 0s) goto 0x000148
0x000118:
    self.speed = 4s
    self.dep = 1s
    self.detune = 3s
    self.dspeed = 1s
0x000148:
    if !(>= 259.emotion 1s) goto 0x00018C
0x00015C:
    self.dep = 0s
    self.detune = 2s
    self.dspeed = 12s
    self.speed = 7s
0x00018C:
    self.direction = (+ (random[]:int32 (var 60s)) 250s)
    self.siner = (random[]:int32 (var 100s))
    self.gravity_direction = (choose[]:int32 (var 180s) (var 45s) (var 90s) (var 45s) (var 0s))
    stog.alarm[0s] = (+ 40s (random[]:int32 (var 20s)))
0x000224:
    exit
