0x000000:
    call (draw_set_color[]:int32 (var 16777215))
    self.yy = 0s
    self.xx = 0s
    if !(< self.yy 5s) goto 0x00089C
0x000044:
    push -1s
    if !(== (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):dodraw 1s) goto 0x000128
0x00008C:
    push (var 0s)
    push (var 2.8d)
    call (draw_circle[]:int32 -1s (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):snowy -1s (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):snowx)
0x000128:
    push (var 1s)
    push (var 0s)
    if !(!= (collision_circle[]:int32 (var 1570s) (var 2s) -1s (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):snowy -1s (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):snowx) -4s) goto 0x000230
0x0001D4:
    stog.moveme[(assert_neq:int16 -1 (int32 self.xx)), (assert_neq:int16 -1 (int32 self.yy))] = (+ (floor[]:int32 (random[]:int32 (var 4s))) 2s)
0x000230:
    push -1s
    if !(> (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):moveme 1s) goto 0x000848
0x000278:
    if !(== 1570.moving 1s) goto 0x0007F8
0x00028C:
    if !(== self.room 57s) goto 0x0002BC
0x0002A0:
    push -5s
    push (== 64s:flag 0s)
    goto 0x0002C0
0x0002BC:
    push 0s
0x0002C0:
    if !pop goto 0x0002D8
0x0002C4:
    stog.flag[64s] = -1s
0x0002D8:
    push 1570.bbox_left
    if !(> -1s (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):snowx) goto 0x0003AC
0x000324:
    push -1s
    push (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy)))
    stog.snowx[(+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):snowx] = (- -1s (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):moveme)
0x0003AC:
    push 1570.bbox_right
    if !(< -1s (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):snowx) goto 0x000480
0x0003F8:
    push -1s
    push (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy)))
    stog.snowx[(+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):snowx] = (+ -1s (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):moveme)
0x000480:
    push 1570.bbox_top
    if !(> -1s (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):snowy) goto 0x000554
0x0004CC:
    push -1s
    push (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy)))
    stog.snowy[(+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):snowy] = (- -1s (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):moveme)
0x000554:
    push 1570.bbox_bottom
    if !(< -1s (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):snowy) goto 0x000628
0x0005A0:
    push -1s
    push (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy)))
    stog.snowy[(+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):snowy] = (+ -1s (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):moveme)
0x000628:
    push -1s
    push (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy)))
    push -1s
    stog.snowx[(+ (random[]:int32 (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):moveme) (/ (- -1s (/ (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):moveme (double 2s))) (double 2s)))] = (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):snowx
    push -1s
    push (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy)))
    push -1s
    stog.snowy[(+ (random[]:int32 (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):moveme) (/ (- -1s (/ (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):moveme (double 2s))) (double 2s)))] = (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):snowy
0x0007F8:
    push -1s
    stog.moveme[(- (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy))):moveme 1s)] = (+ (* (assert_neq:int16 -1 (int32 self.xx)) 32000) (assert_neq:int16 -1 (int32 self.yy)))
0x000848:
    if !(== self.xx 4s) goto 0x000880
0x00085C:
    self.xx = -1s
    self.yy = (+ self.yy 1s)
0x000880:
    self.xx = (+ self.xx 1s)
    goto 0x000030
0x00089C:
    exit
