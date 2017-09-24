0x000000:
    stog.sidebl[(int32 self.i)] = (instance_create[]:int32 (var 1665s) (+ (- self.y 40s) (* self.i 10s)) (+ self.x 250s))
    if !(< self.i 8s) goto 0x000084
0x000070:
    stog.alarm[2s] = 1s
0x000084:
    self.amt = (+ self.amt 1s)
    self.i = (+ self.i 1s)
    stog.alarm[10s] = 10s
    call (snd_play[]:int32 (var 92s))
0x0000DC:
    exit
