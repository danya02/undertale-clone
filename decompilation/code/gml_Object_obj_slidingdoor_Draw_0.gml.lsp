0x000000:
    call (draw_sprite[]:int32 self.y (+ self.x self.slidedoorx) (var 0s) (var 1863s))
    call (draw_sprite[]:int32 self.y self.x (var 0s) self.sprite_index)
    if !(== self.active 1s) goto 0x000150
0x000078:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000150
0x000090:
    if !(< (distance_to_object[]:int32 (var 1570s)) 40s) goto 0x0000C0
0x0000AC:
    push (== self.on -1s)
    goto 0x0000C4
0x0000C0:
    push 0s
0x0000C4:
    if pop goto 0x0000DC
0x0000C8:
    push (== self.on 0s)
    goto 0x0000E0
0x0000DC:
    push 1s
0x0000E0:
    if !pop goto 0x0000F0
0x0000E4:
    self.on = 1s
0x0000F0:
    if !(> (distance_to_object[]:int32 (var 1570s)) 60s) goto 0x000120
0x00010C:
    push (== self.on 1s)
    goto 0x000124
0x000120:
    push 0s
0x000124:
    if pop goto 0x00013C
0x000128:
    push (== self.on 0s)
    goto 0x000140
0x00013C:
    push 1s
0x000140:
    if !pop goto 0x000150
0x000144:
    self.on = -1s
0x000150:
    if !(== self.on 1s) goto 0x000214
0x000164:
    self.c_noise = 0s
    self.s_noise = 0s
    if !(== self.o_noise 0s) goto 0x0001B0
0x000190:
    call (snd_play[]:int32 (var 121s))
    self.o_noise = 1s
0x0001B0:
    if !(< self.slidedoorx 40s) goto 0x0001E0
0x0001C4:
    self.slidedoorx = (+ self.slidedoorx 5s)
    goto 0x000214
0x0001E0:
    self.on = 0s
    if !(== self.active 0s) goto 0x000214
0x000200:
    call (snd_play[]:int32 (var 122s))
0x000214:
    if !(== self.on -1s) goto 0x0002E4
0x000228:
    self.o_noise = 0s
    self.s_noise = 0s
    if !(== self.c_noise 0s) goto 0x000274
0x000254:
    call (snd_play[]:int32 (var 120s))
    self.c_noise = 1s
0x000274:
    if !(> self.slidedoorx 0s) goto 0x0002A4
0x000288:
    self.slidedoorx = (- self.slidedoorx 5s)
    goto 0x0002E4
0x0002A4:
    self.slidedoorx = 0s
    self.on = 0s
    if !(== self.active 0s) goto 0x0002E4
0x0002D0:
    call (snd_play[]:int32 (var 122s))
0x0002E4:
    exit
