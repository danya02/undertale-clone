0x000000:
    if !(== self.mode 0s) goto 0x00028C
0x000014:
    self.rotter = (+ self.rotter 1s)
    self.rotter = (+ self.rotter (/ self.speedmod (double 2s)))
    self.rot = (* (sin[]:int32 (/ self.rotter (double 6s))) 30s)
    self.rot = (* self.rot self.rotmod)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (- self.rot) (var 2s) (var 2s) (+ self.y 75s) (+ self.x 5s) self.image_index (var 277s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (/ self.rot (double 2s)) (var 2s) (var 2s) (+ (+ self.y 35s) (/ self.rot (double 4s))) self.x self.image_index (var 276s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (/ self.rot (double 3s)) (var 2s) (var 2s) (+ self.y 65s) (+ self.x 5s) self.image_index (var 275s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.rot (var 2s) (var 2s) (+ self.y (/ self.rot (double 3s))) (- self.x (/ self.rot (double 3s))) global.faceemotion (var 274s))
    goto 0x0004AC
0x00028C:
    push (var 1s)
    push (var 16777215)
    push -1s
    call (draw_sprite_ext[]:int32 0s:partrot (var 2s) (var 2s) self.y (+ -1s 0s:party) self.x (+ -1s 0s:partx) self.image_index (var 277s))
    push (var 1s)
    push (var 16777215)
    push -1s
    call (draw_sprite_ext[]:int32 1s:partrot (var 2s) (var 2s) self.y (+ -1s 1s:party) self.x (+ -1s 1s:partx) self.image_index (var 276s))
    push (var 1s)
    push (var 16777215)
    push -1s
    call (draw_sprite_ext[]:int32 2s:partrot (var 2s) (var 2s) self.y (+ -1s 2s:party) self.x (+ -1s 2s:partx) self.image_index (var 275s))
    push (var 1s)
    push (var 16777215)
    push -1s
    call (draw_sprite_ext[]:int32 3s:partrot (var 2s) (var 2s) self.y (+ -1s 3s:party) self.x (+ -1s 3s:partx) global.faceemotion (var 274s))
0x0004AC:
    if !(== self.mode 1s) goto 0x0007DC
0x0004C0:
    self.check = 1s
    self.fakegrav = (+ self.fakegrav 0.5d)
    self.i = 0s
    if !(< self.i 4s) goto 0x00062C
0x00050C:
    stog.go[(int32 self.i)] = 1s
    push -1s
    push (+ (int32 self.i):party self.y)
    if !(< -5s (- 2s:idealborder 25s)) goto 0x0005A0
0x00056C:
    push -1s
    stog.party[(+ (int32 self.i):party self.fakegrav)] = (int32 self.i)
    goto 0x000610
0x0005A0:
    push -5s
    stog.party[(int32 self.i)] = (- (- 2s:idealborder 20s) self.y)
    self.check = (+ self.check 1s)
    stog.go[(int32 self.i)] = 0s
0x000610:
    self.i = (+ self.i 1s)
    goto 0x0004F8
0x00062C:
    push -1s
    if !(== 0s:go 1s) goto 0x000690
0x000648:
    push -1s
    stog.partx[(+ 0s:partx 2s)] = 0s
    push -1s
    stog.partrot[(+ 0s:partrot 2s)] = 0s
0x000690:
    push -1s
    if !(== 1s:go 1s) goto 0x0006F4
0x0006AC:
    push -1s
    stog.partx[(+ 1s:partx 4s)] = 1s
    push -1s
    stog.partrot[(+ 1s:partrot 5s)] = 1s
0x0006F4:
    push -1s
    if !(== 2s:go 1s) goto 0x000758
0x000710:
    push -1s
    stog.partx[(- 2s:partx 1s)] = 2s
    push -1s
    stog.partrot[(- 2s:partrot 3s)] = 2s
0x000758:
    push -1s
    if !(== 3s:go 1s) goto 0x0007BC
0x000774:
    push -1s
    stog.partx[(- 3s:partx 3s)] = 3s
    push -1s
    stog.partrot[(- 3s:partrot 9s)] = 3s
0x0007BC:
    if !(== self.check 4s) goto 0x0007DC
0x0007D0:
    self.mode = 3s
0x0007DC:
    if !(== self.mode 2s) goto 0x0009B4
0x0007F0:
    self.dingus = (+ self.dingus 1s)
    self.i = 0s
    if !(< self.i 4s) goto 0x00097C
0x000828:
    push -1s
    push (int32 self.i)
    push -1s
    stog.partx[(- (int32 self.i):partx (/ (- -1s (int32 self.i):opartx) (double 4s)))] = (int32 self.i):partx
    push -1s
    push (int32 self.i)
    push -1s
    stog.party[(- (int32 self.i):party (/ (- -1s (int32 self.i):oparty) (double 4s)))] = (int32 self.i):party
    push -1s
    push (int32 self.i)
    push -1s
    stog.partrot[(- (int32 self.i):partrot (/ (- -1s (int32 self.i):opartrot) (double 4s)))] = (int32 self.i):partrot
    self.i = (+ self.i 1s)
    goto 0x000814
0x00097C:
    if !(> self.dingus 20s) goto 0x0009B4
0x000990:
    self.dingus = 0s
    self.mode = 0s
    self.check = 0s
0x0009B4:
    exit
