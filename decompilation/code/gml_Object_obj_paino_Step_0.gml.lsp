0x000000:
    self.num = 0s
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x000038
0x000024:
    push (== self.num 0s)
    goto 0x00003C
0x000038:
    push 0s
0x00003C:
    if !pop goto 0x000058
0x000040:
    self.num = (+ self.num 1s)
0x000058:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x000084
0x000070:
    push (== self.num 0s)
    goto 0x000088
0x000084:
    push 0s
0x000088:
    if !pop goto 0x0000A4
0x00008C:
    self.num = (+ self.num 2s)
0x0000A4:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x0000D0
0x0000BC:
    push (== self.num 0s)
    goto 0x0000D4
0x0000D0:
    push 0s
0x0000D4:
    if !pop goto 0x0000F0
0x0000D8:
    self.num = (+ self.num 3s)
0x0000F0:
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x00011C
0x000108:
    push (== self.num 0s)
    goto 0x000120
0x00011C:
    push 0s
0x000120:
    if !pop goto 0x00013C
0x000124:
    self.num = (+ self.num 4s)
0x00013C:
    if !(< self.buffer 1s) goto 0x000270
0x000150:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000270
0x000168:
    stog.justplayed[(int32 self.num)] = 6s
    stog.played[(int32 self.num)] = 20s
    push (var 1.13d)
    call (caster_play[]:int32 (var 0.5d) -1s (int32 self.num):p)
    self.i = 29s
    if !(> self.i 0s) goto 0x000258
0x000204:
    push -1s
    stog.pp[(int32 self.i)] = (int32 (- self.i 1s)):pp
    self.i = (- self.i 1s)
    goto 0x0001F0
0x000258:
    stog.pp[0s] = self.num
0x000270:
    self.i = 0s
    if !(< self.i 10s) goto 0x000304
0x000290:
    push -1s
    stog.justplayed[(- (int32 self.i):justplayed 1s)] = (int32 self.i)
    push -1s
    stog.played[(- (int32 self.i):played 1s)] = (int32 self.i)
    self.i = (+ self.i 1s)
    goto 0x00027C
0x000304:
    global.interact = 1s
    self.buffer = (- self.buffer 1s)
    if !(== (keyboard_multicheck[]:int32 (var 1s)) 0s) goto 0x000350
0x000344:
    self.coff = 0s
0x000350:
    if !(< self.buffer 0s) goto 0x000394
0x000364:
    if !(bool (keyboard_multicheck[]:int32 (var 1s))) goto 0x000394
0x00037C:
    self.coff = (+ self.coff 1s)
0x000394:
    if !(> self.coff 1s) goto 0x0003C0
0x0003A8:
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x0003C0:
    exit
