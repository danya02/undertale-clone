0x000000:
    self.pop = (scr_monstersum[]:int32 )
    if !(bool (instance_exists[]:int32 (var 217s))) goto 0x000054
0x000028:
    if !(== 217.ditch 0s) goto 0x000054
0x00003C:
    self.pop = (- self.pop 1s)
0x000054:
    self.y = (+ (- self.y 120s) (random[]:int32 (var 40s)))
    self.vspeed = 4.2d
    self.friction = 0.1d
    self.dmg = 0s
    self.toothspeed = -0.1d
    self.toothdist = 265s
    if !(== self.pop 2s) goto 0x000118
0x0000E8:
    self.y = (- self.y 25s)
    self.toothdist = (+ self.toothdist 50s)
0x000118:
    if !(== self.pop 3s) goto 0x00015C
0x00012C:
    self.y = (- self.y 35s)
    self.toothdist = (+ self.toothdist 70s)
0x00015C:
    self.seed = (random[]:int32 (var 40s))
    self.i = 0s
    push -5s
    push (+ 0s:idealborder (* self.i 5s))
    if !(< -5s 1s:idealborder) goto 0x000224
0x0001BC:
    push -5s
    stog.toothxx[(int32 self.i)] = (+ 0s:idealborder (* self.i 5s))
    self.maxi = self.i
    self.i = (+ self.i 1s)
    goto 0x000180
0x000224:
    self.factor = (/ 12.5663706143592d self.maxi)
    self.i = 0s
    push -5s
    push (+ 0s:idealborder (* self.i 5s))
    if !(< -5s 1s:idealborder) goto 0x0002FC
0x00028C:
    stog.toothyy[(int32 self.i)] = (+ self.y (* (sin[]:int32 (+ self.seed (* self.i self.factor))) 30s))
    self.i = (+ self.i 1s)
    goto 0x000250
0x0002FC:
    exit
