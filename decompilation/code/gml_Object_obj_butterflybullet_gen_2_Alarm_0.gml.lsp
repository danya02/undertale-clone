0x000000:
    push (var 395s)
    call (instance_create[]:int32 -5s (+ 3s:idealborder 20s) (- 743.x 50s))
    push (var 395s)
    call (instance_create[]:int32 -5s (+ 3s:idealborder 20s) (+ 743.x 10s))
    push (var 395s)
    call (instance_create[]:int32 -5s (+ 3s:idealborder 20s) (+ 743.x 70s))
    if !(bool (instance_exists[]:int32 (var 395s))) goto 0x0000DC
0x0000CC:
    [obj_butterflybullet_2].dmg = self.dmg
0x0000DC:
    stog.alarm[0s] = self.rate
0x0000F4:
    exit
