0x000000:
    self.thensc = 0s
    self.sc = (abs[]:int32 (- (floor[]:int32 (/ (int32 self.check):x (int32 self.check):hspeed)) (floor[]:int32 (/ self.fatalx (int32 self.check):hspeed))))
    if !(< self.sc 26s) goto 0x00009C
0x000090:
    self.thensc = 10s
0x00009C:
    if !(< self.sc 20s) goto 0x0000BC
0x0000B0:
    self.thensc = 15s
0x0000BC:
    if !(< self.sc 16s) goto 0x0000DC
0x0000D0:
    self.thensc = 30s
0x0000DC:
    if !(< self.sc 12s) goto 0x0000FC
0x0000F0:
    self.thensc = 50s
0x0000FC:
    if !(< self.sc 8s) goto 0x00011C
0x000110:
    self.thensc = 75s
0x00011C:
    if !(< self.sc 5s) goto 0x00013C
0x000130:
    self.thensc = 83s
0x00013C:
    if !(< self.sc 3s) goto 0x00015C
0x000150:
    self.thensc = 90s
0x00015C:
    if !(< self.sc 2s) goto 0x00017C
0x000170:
    self.thensc = 95s
0x00017C:
    if !(< self.sc 1s) goto 0x0001B8
0x000190:
    self.thensc = 110s
    push self.fatalx
    stog.x* = (int32 self.check)
0x0001B8:
    self.myscore = (+ self.myscore self.thensc)
    self.fadebar = (instance_create[]:int32 (var 720s) (int32 self.check):y (int32 self.check):x)
    if !(< self.sc 1s) goto 0x000270
0x000228:
    push 2s
    stog.image_index* = (int32 self.fadebar)
    push 1s
    stog.image_speed* = (int32 self.fadebar)
    call (snd_play[]:int32 (var 54s))
    goto 0x0002B0
0x000270:
    if !(< self.sc 5s) goto 0x0002B0
0x000284:
    push 1s
    stog.image_index* = (int32 self.fadebar)
    call (snd_play[]:int32 (var 55s))
0x0002B0:
    pushenv (int32 self.check) 0x0002CC
0x0002C0:
    call (instance_destroy[]:int32 )
0x0002CC:
    popenv 0x0002C0
0x0002D0:
    exit
