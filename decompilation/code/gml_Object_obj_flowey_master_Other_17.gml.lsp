0x000000:
    global.damage = 5s
    if !(== global.soul_rescue 0s) goto 0x00002C
0x000020:
    global.damage = 1s
0x00002C:
    if !(== global.soul_rescue 1s) goto 0x000068
0x000040:
    global.damage = (+ 3s (floor[]:int32 (random[]:int32 (var 3s))))
0x000068:
    if !(== global.soul_rescue 2s) goto 0x0000A4
0x00007C:
    global.damage = (+ 10s (floor[]:int32 (random[]:int32 (var 3s))))
0x0000A4:
    if !(== global.soul_rescue 3s) goto 0x0000E0
0x0000B8:
    global.damage = (+ 14s (floor[]:int32 (random[]:int32 (var 3s))))
0x0000E0:
    if !(== global.soul_rescue 4s) goto 0x00011C
0x0000F4:
    global.damage = (+ 18s (floor[]:int32 (random[]:int32 (var 4s))))
0x00011C:
    if !(== global.soul_rescue 5s) goto 0x000158
0x000130:
    global.damage = (+ 23s (floor[]:int32 (random[]:int32 (var 4s))))
0x000158:
    if !(>= global.soul_rescue 6s) goto 0x0002A4
0x00016C:
    global.damage = (+ 150s (floor[]:int32 (random[]:int32 (var 70s))))
    if !(== self.megadamage 1s) goto 0x0001D0
0x0001A8:
    global.damage = (+ 250s (floor[]:int32 (random[]:int32 (var 21s))))
0x0001D0:
    if !(== self.megadamage 2s) goto 0x00020C
0x0001E4:
    global.damage = (+ 360s (floor[]:int32 (random[]:int32 (var 21s))))
0x00020C:
    if !(== self.megadamage 3s) goto 0x000248
0x000220:
    global.damage = (+ 700s (floor[]:int32 (random[]:int32 (var 21s))))
0x000248:
    if !(== self.megadamage 4s) goto 0x000284
0x00025C:
    global.damage = (+ 1200s (floor[]:int32 (random[]:int32 (var 21s))))
0x000284:
    if !(== self.megadamage 8s) goto 0x0002A4
0x000298:
    global.damage = 6000s
0x0002A4:
    if !(> global.damage 100s) goto 0x0002FC
0x0002B8:
    pushenv 1587s 0x0002D4
0x0002C0:
    call (event_user[]:int32 (var 1s))
0x0002D4:
    popenv 0x0002C0
0x0002D8:
    self.knockfactor = 6s
    stog.alarm[11s] = 1s
    goto 0x00031C
0x0002FC:
    pushenv 1587s 0x000318
0x000304:
    call (event_user[]:int32 (var 2s))
0x000318:
    popenv 0x000304
0x00031C:
    global.floweyhp = (- global.floweyhp global.damage)
    if !(< global.damage 100s) goto 0x000364
0x00034C:
    call (snd_play[]:int32 (var 158s))
    goto 0x000378
0x000364:
    call (snd_play[]:int32 (var 136s))
0x000378:
    self.dd = (instance_create[]:int32 (var 1599s) (var 140s) (var 100s))
    push 60s
    push (int32 self.dd)
    stog.alarm[] = 2s
    if !(<= global.floweyhp 0s) goto 0x000494
0x0003D0:
    pushenv 1596s 0x0003E4
0x0003D8:
    call (instance_destroy[]:int32 )
0x0003E4:
    popenv 0x0003D8
0x0003E8:
    pushenv 1583s 0x0003FC
0x0003F0:
    call (instance_destroy[]:int32 )
0x0003FC:
    popenv 0x0003F0
0x000400:
    pushenv 1584s 0x000414
0x000408:
    call (instance_destroy[]:int32 )
0x000414:
    popenv 0x000408
0x000418:
    pushenv 1627s 0x00042C
0x000420:
    call (instance_destroy[]:int32 )
0x00042C:
    popenv 0x000420
0x000430:
    call (caster_stop[]:int32 (var -3s))
    call (snd_play[]:int32 (var 136s))
    stog.alarm[(int32 self.dd)] = 2s
    self.dcon = 1s
    stog.alarm[4s] = 30s
0x000494:
    exit
