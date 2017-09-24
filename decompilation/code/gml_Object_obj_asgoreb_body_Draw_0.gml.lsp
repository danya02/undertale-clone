0x000000:
    self.i = 0s
    if !(< self.i 8s) goto 0x0000DC
0x000020:
    push (var 1s)
    push (var 16777215)
    push (var 0s)
    call (draw_sprite_ext[]:int32 (var 2s) (var 2s) self.y (+ -1s (int32 self.i):party) self.x (+ -1s (int32 self.i):partx) self.fakeanim -1s (int32 self.i):part)
    self.i = (+ self.i 1s)
    goto 0x00000C
0x0000DC:
    self.siner = (+ self.siner 1s)
    self.fakeanim = (+ self.fakeanim 0.1d)
    if !(== self.moving 1s) goto 0x0002F0
0x000128:
    push -1s
    stog.party[(+ 7s:party (* (sin[]:int32 (/ self.siner (double 15s))) 0.3d))] = 7s
    push -1s
    stog.party[(+ 6s:party (* (sin[]:int32 (/ self.siner (double 15s))) 0.2d))] = 6s
    push -1s
    stog.party[(+ 5s:party (* (cos[]:int32 (/ self.siner (double 15s))) 0.1d))] = 5s
    push -1s
    stog.party[(+ 4s:party (* (cos[]:int32 (/ self.siner (double 15s))) 0.1d))] = 4s
    push -1s
    stog.party[(+ 3s:party (* (sin[]:int32 (/ self.siner (double 15s))) 0.1d))] = 3s
    push -1s
    stog.party[(+ 0s:party (* (sin[]:int32 (/ self.siner (double 15s))) 0.05d))] = 0s
0x0002F0:
    stog.part[7s] = 612s
    stog.part[6s] = 613s
    stog.part[5s] = 610s
    stog.part[4s] = 611s
    stog.part[3s] = 614s
    stog.part[2s] = 615s
    stog.part[1s] = 616s
    stog.part[0s] = 608s
0x000390:
    exit
