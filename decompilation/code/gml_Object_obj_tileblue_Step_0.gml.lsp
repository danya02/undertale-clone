0x000000:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1212s) (+ self.y 15s) (+ self.x 15s) (+ self.y 5s) (+ self.x 5s))) goto 0x0000A0
0x000068:
    if !(== self.splash 0s) goto 0x00009C
0x00007C:
    call (snd_play[]:int32 (var 22s))
    self.splash = 1s
0x00009C:
    goto 0x0000AC
0x0000A0:
    self.splash = 0s
0x0000AC:
    exit
