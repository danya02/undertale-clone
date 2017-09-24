0x000000:
    self.pop = (scr_monstersum[]:int32 )
    if !(bool (instance_exists[]:int32 (var 217s))) goto 0x000054
0x000028:
    if !(== 217.ditch 0s) goto 0x000054
0x00003C:
    self.pop = (- self.pop 1s)
0x000054:
    if !(== self.pop 1s) goto 0x000258
0x000068:
    self.n = 3s
    if !(== global.hardmode 1s) goto 0x000124
0x000088:
    stog.blt[3s] = (instance_create[]:int32 (var 645s) (+ self.y 30s) (- self.x 20s))
    stog.blt[4s] = (instance_create[]:int32 (var 645s) (+ self.y 30s) (+ self.x 20s))
    self.n = (+ self.n 2s)
    goto 0x0001E4
0x000124:
    stog.blt[0s] = (instance_create[]:int32 (var 645s) (+ self.y 30s) (- self.x 2s))
    stog.blt[1s] = (instance_create[]:int32 (var 645s) (+ self.y 30s) (+ self.x 12s))
    stog.blt[2s] = (instance_create[]:int32 (var 645s) (+ self.y 30s) (+ self.x 5s))
0x0001E4:
    self.i = 0s
    if !(< self.i self.n) goto 0x000258
0x000208:
    push (- self.dmg 1s)
    push -1s
    stog.dmg* = (int32 (int32 self.i):blt)
    self.i = (+ self.i 1s)
    goto 0x0001F0
0x000258:
    if !(> self.pop 1s) goto 0x000394
0x00026C:
    stog.blt[0s] = (instance_create[]:int32 (var 645s) (+ self.y 14s) (+ self.x 3s))
    stog.blt[1s] = (instance_create[]:int32 (var 645s) (+ self.y 14s) (+ self.x 6s))
    stog.blt[2s] = (instance_create[]:int32 (var 645s) (+ self.y 14s) (+ self.x 9s))
    self.i = 0s
    if !(< self.i 3s) goto 0x000394
0x00034C:
    push self.dmg
    push -1s
    stog.dmg* = (int32 (int32 self.i):blt)
    self.i = (+ self.i 1s)
    goto 0x000338
0x000394:
    stog.alarm[8s] = 20s
    self.image_index = 1s
    self.image_speed = 0s
0x0003C0:
    exit
