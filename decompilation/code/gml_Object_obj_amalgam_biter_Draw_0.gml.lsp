0x000000:
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.con 1s) goto 0x000098
0x00002C:
    [obj_uborder].instant = 1s
    self.eye = 1s
    self.con = 2s
    stog.alarm[4s] = 20s
    call (event_user[]:int32 (var 1s))
    self.con = 4s
    stog.alarm[4s] = 20s
0x000098:
    if !(== self.con 4s) goto 0x00010C
0x0000AC:
    self.mcornerx = (- self.mcornerx 2s)
    self.mcornery = (- self.mcornery 3s)
    self.mcornerx2 = (+ self.mcornerx2 2s)
    self.mcornery2 = (- self.mcornery2 3s)
0x00010C:
    if !(== self.con 5s) goto 0x000148
0x000120:
    self.con = 5.1d
    stog.alarm[4s] = 8s
0x000148:
    if !(== self.con 6.1d) goto 0x000184
0x000164:
    self.con = 6s
    stog.alarm[4s] = 8s
0x000184:
    if !(== self.con 6s) goto 0x0001EC
0x000198:
    self.mcornery = (- self.mcornery 1s)
    self.mcornery2 = (- self.mcornery2 1s)
    push -5s
    stog.idealborder[(- 2s:idealborder 2s)] = 2s
0x0001EC:
    if !(== self.con 7s) goto 0x000220
0x000200:
    self.con = 8s
    stog.alarm[4s] = 8s
0x000220:
    if !(== self.con 9s) goto 0x000374
0x000234:
    push -5s
    if !(< 2s:idealborder 330s) goto 0x0002F0
0x000250:
    self.mcornery = (+ self.mcornery 8s)
    self.mcornery2 = (+ self.mcornery2 8s)
    push -5s
    stog.idealborder[(+ 2s:idealborder 20s)] = 2s
    push 743.y
    if !(< -5s (+ 2s:idealborder 4s)) goto 0x0002EC
0x0002CC:
    push -5s
    [obj_heart].y = (+ 2s:idealborder 4s)
0x0002EC:
    goto 0x000374
0x0002F0:
    stog.idealborder[2s] = 340s
    self.con = 10s
    stog.alarm[4s] = 10s
    push -5s
    self.yy = 2s:idealborder
    push -5s
    self.yy2 = 3s:idealborder
    self.xx = self.mcornerx
    self.xx2 = self.mcornerx2
0x000374:
    if !(== self.con 10s) goto 0x00045C
0x000388:
    self.mcornerx = (- (+ self.xx (random[]:int32 (var 2s))) 2s)
    self.mcornerx2 = (- (+ self.xx2 (random[]:int32 (var 2s))) 2s)
    stog.idealborder[2s] = (- (+ self.yy (random[]:int32 (var 2s))) 2s)
    push 743.y
    if !(< -5s (+ 2s:idealborder 4s)) goto 0x00045C
0x00043C:
    push -5s
    [obj_heart].y = (+ 2s:idealborder 4s)
0x00045C:
    if !(== self.con 11s) goto 0x0004D8
0x000470:
    if !(>= self.times self.maxtimes) goto 0x000494
0x000488:
    self.con = 50s
0x000494:
    if !(< self.times self.maxtimes) goto 0x0004D8
0x0004AC:
    self.con = 12s
    [obj_amalgam_tooth].con = 10s
    push 1s
    push 546s
    stog.alarm[] = 2s
0x0004D8:
    if !(== self.con 12s) goto 0x0006A4
0x0004EC:
    push -5s
    if !(> 2s:idealborder 260s) goto 0x0005A8
0x000508:
    self.mcornery = (- self.mcornery 8s)
    self.mcornery2 = (- self.mcornery2 8s)
    push -5s
    stog.idealborder[(- 2s:idealborder 20s)] = 2s
    push 743.y
    if !(< -5s (+ 2s:idealborder 4s)) goto 0x0005A4
0x000584:
    push -5s
    [obj_heart].y = (+ 2s:idealborder 4s)
0x0005A4:
    goto 0x0006A4
0x0005A8:
    call (event_user[]:int32 (var 1s))
    self.times = (+ self.times 1s)
    stog.idealborder[2s] = 250s
    self.con = 5.1d
    stog.alarm[4s] = 20s
    if (== self.miss 10s) goto 0x000638
0x000624:
    push (== self.miss 0s)
    goto 0x00063C
0x000638:
    push 1s
0x00063C:
    if !pop goto 0x000654
0x000640:
    stog.alarm[4s] = 26s
0x000654:
    push -5s
    self.yy = 2s:idealborder
    push -5s
    self.yy2 = 3s:idealborder
    self.xx = self.mcornerx
    self.xx2 = self.mcornerx2
0x0006A4:
    if !(== self.con 50s) goto 0x000704
0x0006B8:
    self.eye = 0s
    [obj_amalgam_tooth].con = 10s
    push 1s
    push 546s
    stog.alarm[] = 2s
    self.con = 51s
    stog.alarm[4s] = 15s
0x000704:
    global.border = 9999s
    if !(== self.con 51s) goto 0x0008F8
0x000724:
    push -5s
    if !(> 2s:idealborder 260s) goto 0x000768
0x000740:
    push -5s
    stog.idealborder[(- 2s:idealborder 10s)] = 2s
    goto 0x000788
0x000768:
    stog.idealborder[2s] = 250s
    [obj_uborder].instant = 0s
0x000788:
    push self.mcornerx
    if !(< -5s (- 0s:idealborder 5s)) goto 0x0007CC
0x0007B0:
    self.mcornerx = (+ self.mcornerx 4s)
    goto 0x0007E4
0x0007CC:
    push -5s
    self.mcornerx = 0s:idealborder
0x0007E4:
    push self.mcornery
    if !(< -5s (- 2s:idealborder 5s)) goto 0x000828
0x00080C:
    self.mcornery = (+ self.mcornery 4s)
    goto 0x000840
0x000828:
    push -5s
    self.mcornery = 2s:idealborder
0x000840:
    push self.mcornerx2
    if !(> -5s (+ 1s:idealborder 5s)) goto 0x000884
0x000868:
    self.mcornerx2 = (- self.mcornerx2 4s)
    goto 0x00089C
0x000884:
    push -5s
    self.mcornerx2 = 1s:idealborder
0x00089C:
    push self.mcornery2
    if !(< -5s (- 2s:idealborder 5s)) goto 0x0008E0
0x0008C4:
    self.mcornery2 = (+ self.mcornery2 4s)
    goto 0x0008F8
0x0008E0:
    push -5s
    self.mcornery2 = 2s:idealborder
0x0008F8:
    if !(== self.eye 1s) goto 0x000950
0x00090C:
    if !(< self.eyestretch 1s) goto 0x000944
0x000920:
    self.eyestretch = (+ self.eyestretch 0.05d)
    goto 0x000950
0x000944:
    self.eyestretch = 1s
0x000950:
    if !(== self.eye 0s) goto 0x0009A8
0x000964:
    if !(> self.eyestretch 0s) goto 0x00099C
0x000978:
    self.eyestretch = (- self.eyestretch 0.1d)
    goto 0x0009A8
0x00099C:
    self.eyestretch = 0s
0x0009A8:
    push (var 1s)
    push (var 16777215)
    call (draw_sprite_ext[]:int32 (var 0s) self.eyestretch (var 1s) -5s (- 2s:idealborder 80s) -5s (+ 0s:idealborder 120s) (var 0s) (var 706s))
    push (var 3s)
    push -5s
    call (draw_line_width[]:int32 2s:idealborder -5s 0s:idealborder self.mcornery self.mcornerx)
    push (var 3s)
    push -5s
    call (draw_line_width[]:int32 3s:idealborder -5s 0s:idealborder self.mcornery self.mcornerx)
    push (var 3s)
    push -5s
    call (draw_line_width[]:int32 2s:idealborder -5s 1s:idealborder self.mcornery2 self.mcornerx2)
    push (var 3s)
    push -5s
    call (draw_line_width[]:int32 3s:idealborder -5s 1s:idealborder self.mcornery2 self.mcornerx2)
0x000B30:
    exit
