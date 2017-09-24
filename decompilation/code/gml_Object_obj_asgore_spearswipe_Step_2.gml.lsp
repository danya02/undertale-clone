0x000000:
    if !(>= self.image_index 5s) goto 0x000028
0x000014:
    push (< self.image_index 6s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0003AC
0x000030:
    if !(== self.cutsdone 0s) goto 0x00012C
0x000044:
    self.cutsfxN = (+ self.cutsfxN 1s)
    stog.cutsfxA[(int32 self.cutsfxN)] = self.cutsfx
    stog.cutsfxA[(int32 (- self.cutsfxN 1s))] = self.cutsfx
    if !(> self.cutsfxN 1s) goto 0x0000E4
0x0000B8:
    push -1s
    call (caster_stop[]:int32 (int32 (- self.cutsfxN 1s)):cutsfxA)
0x0000E4:
    push (var 1s)
    call (caster_play[]:int32 (var 0.8d) -1s (int32 self.cutsfxN):cutsfxA)
    self.cutsdone = 1s
0x00012C:
    push -1s
    if !(== (int32 self.curamt):type 1s) goto 0x000164
0x000150:
    push (== self.hitted 0s)
    goto 0x000168
0x000164:
    push 0s
0x000168:
    if !pop goto 0x00026C
0x00016C:
    self.hit = 1s
    if !(< (abs[]:int32 (- 743.x 743.xprevious)) 0.1d) goto 0x0001B4
0x0001A8:
    self.hit = 0s
0x0001B4:
    if !(~ (bool (keyboard_check[]:int32 (var 37s)))) goto 0x000224
0x0001D0:
    if !(~ (bool (keyboard_check[]:int32 (var 39s)))) goto 0x000224
0x0001EC:
    if !(~ (bool (keyboard_check[]:int32 (var 38s)))) goto 0x000224
0x000208:
    push (~ (bool (keyboard_check[]:int32 (var 40s))))
    goto 0x000228
0x000224:
    push 0s
0x000228:
    if !pop goto 0x000238
0x00022C:
    self.hit = 0s
0x000238:
    if !(== self.hit 1s) goto 0x00026C
0x00024C:
    call (event_user[]:int32 (var 0s))
    self.hitted = 1s
0x00026C:
    push -1s
    if !(== (int32 self.curamt):type 2s) goto 0x0002A4
0x000290:
    push (== self.hitted 0s)
    goto 0x0002A8
0x0002A4:
    push 0s
0x0002A8:
    if !pop goto 0x00039C
0x0002AC:
    self.hit = 1s
    if !(> (abs[]:int32 (- 743.x 743.xprevious)) 0.1d) goto 0x0002F4
0x0002E8:
    self.hit = 0s
0x0002F4:
    if (bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x000354
0x00030C:
    if (bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x000354
0x000324:
    if (bool (keyboard_check_pressed[]:int32 (var 38s))) goto 0x000354
0x00033C:
    push (bool (keyboard_check_pressed[]:int32 (var 40s)))
    goto 0x000358
0x000354:
    push 1s
0x000358:
    if !pop goto 0x000368
0x00035C:
    self.hit = 0s
0x000368:
    if !(== self.hit 1s) goto 0x00039C
0x00037C:
    call (event_user[]:int32 (var 0s))
    self.hitted = 1s
0x00039C:
    self.hitted = 2s
    goto 0x0003B8
0x0003AC:
    self.cutsdone = 0s
0x0003B8:
    exit
