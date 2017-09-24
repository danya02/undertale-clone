0x000000:
    self.type = 2s
    self.s_buffer = 10s
    self.o_sound = 0s
    self.c_sound = 0s
    self.s_sound = 0s
    self.open = -1s
    self.ox = 0s
    self.anim = 0s
    self.red = 0s
    self.yel = 0s
    self.gre = 0s
    self.blu = 0s
    push -5s
    if !(== 481s:flag 3s) goto 0x0000B8
0x0000AC:
    self.red = 1s
0x0000B8:
    push -5s
    if !(== 482s:flag 3s) goto 0x0000E0
0x0000D4:
    self.blu = 1s
0x0000E0:
    push -5s
    if !(== 483s:flag 3s) goto 0x000108
0x0000FC:
    self.gre = 1s
0x000108:
    push -5s
    if !(== 484s:flag 3s) goto 0x000130
0x000124:
    self.yel = 1s
0x000130:
    if !(== self.room 244s) goto 0x0001DC
0x000144:
    if !(== global.entrance 1s) goto 0x00016C
0x000158:
    stog.alarm[0s] = 1s
0x00016C:
    self.shouldopen = 0s
    self.type = 0s
    stog.flag[480s] = 1s
    pushenv 1570s 0x0001D8
0x0001A0:
    self.image_blend = (merge_color[]:int32 (var 0.3d) (var 16777215) (var 8421504))
0x0001D8:
    popenv 0x0001A0
0x0001DC:
    if !(== self.room 246s) goto 0x00021C
0x0001F0:
    push (< self.x (/ (* self.room_width 2s) (double 3s)))
    goto 0x000220
0x00021C:
    push 0s
0x000220:
    if !pop goto 0x0002F8
0x000224:
    self.shouldopen = 0s
    self.type = 1s
    if !(== self.red 1s) goto 0x00028C
0x000250:
    if !(== self.blu 1s) goto 0x00028C
0x000264:
    if !(== self.gre 1s) goto 0x00028C
0x000278:
    push (== self.yel 1s)
    goto 0x000290
0x00028C:
    push 0s
0x000290:
    if !pop goto 0x0002A0
0x000294:
    self.shouldopen = 1s
0x0002A0:
    stog.flag[480s] = 1s
    pushenv 1570s 0x0002F4
0x0002BC:
    self.image_blend = (merge_color[]:int32 (var 0.3d) (var 16777215) (var 8421504))
0x0002F4:
    popenv 0x0002BC
0x0002F8:
    if !(== self.room 246s) goto 0x000338
0x00030C:
    push (> self.x (/ (* self.room_width 2s) (double 3s)))
    goto 0x00033C
0x000338:
    push 0s
0x00033C:
    if !pop goto 0x000398
0x000340:
    self.shouldopen = 0s
    self.type = 2s
    if !(== self.red 1s) goto 0x000378
0x00036C:
    self.shouldopen = 1s
0x000378:
    if !(== global.entrance 20s) goto 0x000398
0x00038C:
    self.open = 1s
0x000398:
    self.s1 = (instance_create[]:int32 (var 2s) (+ self.y 40s) self.x)
    self.s2 = (instance_create[]:int32 (var 2s) (+ self.y 40s) (+ self.x 20s))
    self.myinteract = 0s
    if !(== global.entrance 19s) goto 0x000434
0x000420:
    stog.alarm[0s] = 1s
0x000434:
    exit
