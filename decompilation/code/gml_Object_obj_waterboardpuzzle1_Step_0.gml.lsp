0x000000:
    if !(== self.won 0s) goto 0x000998
0x000014:
    self.i = 0s
    if !(< self.i (instance_number[]:int32 (var 1114s))) goto 0x000998
0x000040:
    self.h = 0s
    self.v = 0s
    self.me = (instance_find[]:int32 self.i (var 1114s))
    self.xx = (int32 self.me):x
    self.yy = (int32 self.me):y
    self.j = 1s
    stog.rx[0s] = 1s
    stog.lx[0s] = 1s
    stog.ux[0s] = 1s
    stog.dx[0s] = 1s
    self.doodly = 0s
    if (<= 3s 0) goto 0x000608
0x000130:
    push 3s
    stog.lx[(int32 self.j)] = 0s
    stog.dx[(int32 self.j)] = 0s
    stog.rx[(int32 self.j)] = 0s
    stog.ux[(int32 self.j)] = 0s
    stog.l[(int32 self.j)] = (instance_position[]:int32 (var 1114s) self.yy (- (- self.xx 2s) self.doodly))
    stog.r[(int32 self.j)] = (instance_position[]:int32 (var 1114s) self.yy (+ (+ self.xx 22s) self.doodly))
    stog.u[(int32 self.j)] = (instance_position[]:int32 (var 1114s) (- (- self.yy 2s) self.doodly) self.xx)
    stog.d[(int32 self.j)] = (instance_position[]:int32 (var 1114s) (+ (+ self.yy 22s) self.doodly) self.xx)
    push -1s
    if !(!= (int32 self.j):l -4s) goto 0x000320
0x0002F4:
    push -1s
    push (== (int32 (- self.j 1s)):lx 1s)
    goto 0x000324
0x000320:
    push 0s
0x000324:
    if !pop goto 0x00038C
0x000328:
    push -1s
    if !(== (int32 (int32 self.j):l):using 3s) goto 0x00038C
0x000358:
    self.h = (+ self.h 1s)
    stog.lx[(int32 self.j)] = 1s
0x00038C:
    push -1s
    if !(!= (int32 self.j):r -4s) goto 0x0003DC
0x0003B0:
    push -1s
    push (== (int32 (- self.j 1s)):rx 1s)
    goto 0x0003E0
0x0003DC:
    push 0s
0x0003E0:
    if !pop goto 0x000448
0x0003E4:
    push -1s
    if !(== (int32 (int32 self.j):r):using 3s) goto 0x000448
0x000414:
    self.h = (+ self.h 1s)
    stog.rx[(int32 self.j)] = 1s
0x000448:
    push -1s
    if !(!= (int32 self.j):u -4s) goto 0x000498
0x00046C:
    push -1s
    push (== (int32 (- self.j 1s)):ux 1s)
    goto 0x00049C
0x000498:
    push 0s
0x00049C:
    if !pop goto 0x000504
0x0004A0:
    push -1s
    if !(== (int32 (int32 self.j):u):using 3s) goto 0x000504
0x0004D0:
    self.v = (+ self.v 1s)
    stog.ux[(int32 self.j)] = 1s
0x000504:
    push -1s
    if !(!= (int32 self.j):d -4s) goto 0x000554
0x000528:
    push -1s
    push (== (int32 (- self.j 1s)):dx 1s)
    goto 0x000558
0x000554:
    push 0s
0x000558:
    if !pop goto 0x0005C0
0x00055C:
    push -1s
    if !(== (int32 (int32 self.j):d):using 3s) goto 0x0005C0
0x00058C:
    self.v = (+ self.v 1s)
    stog.dx[(int32 self.j)] = 1s
0x0005C0:
    self.j = (+ self.j 1s)
    self.doodly = (+ self.doodly 20s)
    if (bool (- pop 1)) goto 0x000130
0x000608:
    push (- pop 1)
    pop
    if !(>= self.v 3s) goto 0x000640
0x000620:
    push (== (int32 self.me):using 3s)
    goto 0x000644
0x000640:
    push 0s
0x000644:
    if !pop goto 0x0007C4
0x000648:
    self.won = 90s
    self.n = 1s
    push 5s
    stog.using* = (int32 self.me)
    if (<= 3s 0) goto 0x0007C0
0x000690:
    push 3s
    push -1s
    if !(!= (int32 self.n):u -4s) goto 0x0006E0
0x0006B4:
    push -1s
    push (== (int32 (- self.n 1s)):ux 1s)
    goto 0x0006E4
0x0006E0:
    push 0s
0x0006E4:
    if !pop goto 0x000710
0x0006E8:
    push 5s
    push -1s
    stog.using* = (int32 (int32 self.n):u)
0x000710:
    push -1s
    if !(!= (int32 self.n):d -4s) goto 0x000760
0x000734:
    push -1s
    push (== (int32 (- self.n 1s)):dx 1s)
    goto 0x000764
0x000760:
    push 0s
0x000764:
    if !pop goto 0x000790
0x000768:
    push 5s
    push -1s
    stog.using* = (int32 (int32 self.n):d)
0x000790:
    self.n = (+ self.n 1s)
    if (bool (- pop 1)) goto 0x000690
0x0007C0:
    push (- pop 1)
    pop
0x0007C4:
    if !(>= self.h 3s) goto 0x0007F8
0x0007D8:
    push (== (int32 self.me):using 3s)
    goto 0x0007FC
0x0007F8:
    push 0s
0x0007FC:
    if !pop goto 0x00097C
0x000800:
    self.won = 90s
    self.n = 1s
    push 5s
    stog.using* = (int32 self.me)
    if (<= 3s 0) goto 0x000978
0x000848:
    push 3s
    push -1s
    if !(!= (int32 self.n):r -4s) goto 0x000898
0x00086C:
    push -1s
    push (== (int32 (- self.n 1s)):rx 1s)
    goto 0x00089C
0x000898:
    push 0s
0x00089C:
    if !pop goto 0x0008C8
0x0008A0:
    push 5s
    push -1s
    stog.using* = (int32 (int32 self.n):r)
0x0008C8:
    push -1s
    if !(!= (int32 self.n):l -4s) goto 0x000918
0x0008EC:
    push -1s
    push (== (int32 (- self.n 1s)):lx 1s)
    goto 0x00091C
0x000918:
    push 0s
0x00091C:
    if !pop goto 0x000948
0x000920:
    push 5s
    push -1s
    stog.using* = (int32 (int32 self.n):l)
0x000948:
    self.n = (+ self.n 1s)
    if (bool (- pop 1)) goto 0x000848
0x000978:
    push (- pop 1)
    pop
0x00097C:
    self.i = (+ self.i 1s)
    goto 0x000020
0x000998:
    if !(== self.won 9999s) goto 0x000BD0
0x0009AC:
    if !(== self.won 2s) goto 0x0009D4
0x0009C0:
    push (== global.interact 0s)
    goto 0x0009D8
0x0009D4:
    push 0s
0x0009D8:
    if !pop goto 0x000A30
0x0009DC:
    global.interact = 1s
    self.won = 97s
    self.vol1 = (caster_get_volume[]:int32 global.currentsong)
    self.vol2 = self.vol1
    call (caster_pause[]:int32 global.currentsong)
0x000A30:
    if !(== self.won 97s) goto 0x000AC8
0x000A44:
    self.vol2 = (- self.vol2 0.02d)
    call (caster_set_volume[]:int32 self.vol2 global.currentsong)
    if !(< self.vol2 0.04d) goto 0x000AC8
0x000A9C:
    self.vol2 = 0s
    call (caster_pause[]:int32 global.currentsong)
    self.won = 98s
0x000AC8:
    if !(== self.won 98s) goto 0x000B50
0x000ADC:
    call (snd_play[]:int32 (var 26s))
    stog.msg[0s] = "* (You hear a small voice.)/"
    stog.msg[1s] = "* Congratulations!/"
    stog.msg[2s] = "* What's wrong with you!/%%"
    call (scr_regulartext[]:int32 )
    self.won = 99s
0x000B50:
    if !(== self.won 99s) goto 0x000B80
0x000B64:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000B84
0x000B80:
    push 0s
0x000B84:
    if !pop goto 0x000BD0
0x000B88:
    global.interact = 0s
    call (caster_set_volume[]:int32 self.vol1 global.currentsong)
    call (caster_resume[]:int32 global.currentsong)
    self.won = 100s
0x000BD0:
    exit
