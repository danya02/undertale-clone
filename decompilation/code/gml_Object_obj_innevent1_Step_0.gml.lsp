0x000000:
    global.interact = 1s
    if !(== self.fadein 1s) goto 0x00003C
0x000020:
    push (< self.vol 0.9d)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x000080
0x000044:
    self.vol = (+ self.vol 0.01d)
    call (caster_set_volume[]:int32 self.vol self.specialsong)
0x000080:
    if !(== self.fadein 2s) goto 0x0000A8
0x000094:
    push (> self.vol 0s)
    goto 0x0000AC
0x0000A8:
    push 0s
0x0000AC:
    if !pop goto 0x000128
0x0000B0:
    self.vol = (- self.vol 0.02d)
    call (caster_set_volume[]:int32 self.vol self.specialsong)
    if !(< self.vol 0.02d) goto 0x000128
0x000108:
    stog.alarm[2s] = 10s
    self.vol = 0s
0x000128:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x00015C
0x000140:
    push (> self.vol 0.6d)
    goto 0x000160
0x00015C:
    push 0s
0x000160:
    if !pop goto 0x000170
0x000164:
    self.fadein = 2s
0x000170:
    exit
