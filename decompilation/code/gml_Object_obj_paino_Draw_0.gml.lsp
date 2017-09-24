0x000000:
    push -1s
    if !(== 6s:pp 0s) goto 0x0000D0
0x00001C:
    push -1s
    if !(== 5s:pp 4s) goto 0x0000D0
0x000038:
    push -1s
    if !(== 4s:pp 3s) goto 0x0000D0
0x000054:
    push -1s
    if !(== 3s:pp 0s) goto 0x0000D0
0x000070:
    push -1s
    if !(== 2s:pp 2s) goto 0x0000D0
0x00008C:
    push -1s
    if !(== 1s:pp 2s) goto 0x0000D0
0x0000A8:
    push -1s
    if !(== 0s:pp 3s) goto 0x0000D0
0x0000C4:
    self.won = 1s
0x0000D0:
    push -1s
    if !(== 7s:pp 0s) goto 0x0001BC
0x0000EC:
    push -1s
    if !(== 6s:pp 4s) goto 0x0001BC
0x000108:
    push -1s
    if !(== 5s:pp 3s) goto 0x0001BC
0x000124:
    push -1s
    if !(== 4s:pp 0s) goto 0x0001BC
0x000140:
    push -1s
    if !(== 3s:pp 2s) goto 0x0001BC
0x00015C:
    push -1s
    if !(== 2s:pp 0s) goto 0x0001BC
0x000178:
    push -1s
    if !(== 1s:pp 2s) goto 0x0001BC
0x000194:
    push -1s
    if !(== 0s:pp 3s) goto 0x0001BC
0x0001B0:
    self.won = 1s
0x0001BC:
    push -1s
    if !(== 7s:pp 0s) goto 0x0002A8
0x0001D8:
    push -1s
    if !(== 6s:pp 4s) goto 0x0002A8
0x0001F4:
    push -1s
    if !(== 5s:pp 3s) goto 0x0002A8
0x000210:
    push -1s
    if !(== 4s:pp 0s) goto 0x0002A8
0x00022C:
    push -1s
    if !(== 3s:pp 2s) goto 0x0002A8
0x000248:
    push -1s
    if !(== 2s:pp 1s) goto 0x0002A8
0x000264:
    push -1s
    if !(== 1s:pp 2s) goto 0x0002A8
0x000280:
    push -1s
    if !(== 0s:pp 3s) goto 0x0002A8
0x00029C:
    self.won = 1s
0x0002A8:
    push -1s
    if !(== 12s:pp 4s) goto 0x000420
0x0002C4:
    push -1s
    if !(== 11s:pp 8s) goto 0x000420
0x0002E0:
    push -1s
    if !(== 10s:pp 7s) goto 0x000420
0x0002FC:
    push -1s
    if !(== 9s:pp 4s) goto 0x000420
0x000318:
    push -1s
    if !(== 8s:pp 6s) goto 0x000420
0x000334:
    push -1s
    if !(== 7s:pp 6s) goto 0x000420
0x000350:
    push -1s
    if !(== 6s:pp 7s) goto 0x000420
0x00036C:
    push -1s
    if !(== 5s:pp 4s) goto 0x000420
0x000388:
    push -1s
    if !(== 4s:pp 7s) goto 0x000420
0x0003A4:
    push -1s
    if !(== 3s:pp 4s) goto 0x000420
0x0003C0:
    push -1s
    if !(== 2s:pp 6s) goto 0x000420
0x0003DC:
    push -1s
    if !(== 1s:pp 6s) goto 0x000420
0x0003F8:
    push -1s
    if !(== 0s:pp 7s) goto 0x000420
0x000414:
    self.won = 1s
0x000420:
    if !(== self.oldmode 1s) goto 0x000894
0x000434:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 200s) (var 220s) (var 48s) (var 78s))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 198s) (var 218s) (var 50s) (var 80s))
    self.i = 0s
    if !(< self.i 5s) goto 0x000840
0x0004E8:
    call (draw_set_color[]:int32 (var 16777215))
    push -1s
    if !(> (int32 self.i):played 0s) goto 0x00053C
0x000524:
    call (draw_set_color[]:int32 (var 65535))
0x00053C:
    push -1s
    if !(> (int32 self.i):justplayed 0s) goto 0x000574
0x000560:
    call (draw_set_color[]:int32 (var 255s))
0x000574:
    call (draw_rectangle[]:int32 (var 0s) (var 150s) (+ 100s (+ (* self.i 10s) 8s)) (var 100s) (+ (+ 100s (* self.i 10s)) 1s))
    if !(> self.i 0s) goto 0x000600
0x0005EC:
    push (< self.i 5s)
    goto 0x000604
0x000600:
    push 0s
0x000604:
    if !pop goto 0x000654
0x000608:
    call (draw_sprite[]:int32 (var 158s) (+ (+ 100s (* self.i 10s)) 2s) (- self.i 1s) (var 845s))
0x000654:
    if (== self.num self.i) goto 0x00068C
0x00066C:
    push (== self.i (- self.num 5s))
    goto 0x000690
0x00068C:
    push 1s
0x000690:
    if !pop goto 0x00074C
0x000694:
    call (draw_set_color[]:int32 (var 65280))
    call (draw_rectangle[]:int32 (var 1s) (var 151s) (+ 100s (+ (* self.i 10s) 9s)) (var 99s) (+ 100s (* self.i 10s)))
    call (draw_circle[]:int32 (var 0s) (var 4s) (var 160s) (+ (+ 100s (* self.i 10s)) 4s))
0x00074C:
    if !(== self.i (+ self.num 5s)) goto 0x000824
0x00076C:
    call (draw_set_color[]:int32 (var 8421376))
    call (draw_rectangle[]:int32 (var 1s) (var 151s) (+ 100s (+ (* self.i 10s) 9s)) (var 99s) (+ 100s (* self.i 10s)))
    call (draw_circle[]:int32 (var 0s) (var 4s) (var 160s) (+ (+ 100s (* self.i 10s)) 4s))
0x000824:
    self.i = (+ self.i 1s)
    goto 0x0004D4
0x000840:
    call (draw_set_color[]:int32 (var 65280))
    call (draw_set_font[]:int32 (var 2s))
    call (draw_text[]:int32 (var "X - Quit") (var 60s) (var 120s))
0x000894:
    if !(!= self.oldmode 1s) goto 0x000B68
0x0008A8:
    call (draw_sprite[]:int32 (var 27s) (var 44s) (var 1s) (var 952s))
    if !(== self.num 0s) goto 0x000958
0x0008E8:
    self.bonus = 0s
    push -1s
    if !(> (int32 self.num):justplayed 0s) goto 0x000924
0x000918:
    self.bonus = 1s
0x000924:
    call (draw_sprite[]:int32 (var 58s) (var 43s) (+ 1s self.bonus) (var 949s))
0x000958:
    if !(== self.num 1s) goto 0x0009DC
0x00096C:
    self.bonus = 0s
    push -1s
    if !(> (int32 self.num):justplayed 0s) goto 0x0009A8
0x00099C:
    self.bonus = 1s
0x0009A8:
    call (draw_sprite[]:int32 (var 58s) (var 54s) (+ 1s self.bonus) (var 948s))
0x0009DC:
    if !(== self.num 2s) goto 0x000A60
0x0009F0:
    self.bonus = 0s
    push -1s
    if !(> (int32 self.num):justplayed 0s) goto 0x000A2C
0x000A20:
    self.bonus = 1s
0x000A2C:
    call (draw_sprite[]:int32 (var 55s) (var 70s) (+ 1s self.bonus) (var 947s))
0x000A60:
    if !(== self.num 3s) goto 0x000AE4
0x000A74:
    self.bonus = 0s
    push -1s
    if !(> (int32 self.num):justplayed 0s) goto 0x000AB0
0x000AA4:
    self.bonus = 1s
0x000AB0:
    call (draw_sprite[]:int32 (var 58s) (var 81s) (+ 1s self.bonus) (var 950s))
0x000AE4:
    if !(== self.num 4s) goto 0x000B68
0x000AF8:
    self.bonus = 0s
    push -1s
    if !(> (int32 self.num):justplayed 0s) goto 0x000B34
0x000B28:
    self.bonus = 1s
0x000B34:
    call (draw_sprite[]:int32 (var 55s) (var 97s) (+ 1s self.bonus) (var 951s))
0x000B68:
    if !(== self.won 1s) goto 0x000B90
0x000B7C:
    push (== self.wonned 0s)
    goto 0x000B94
0x000B90:
    push 0s
0x000B94:
    if !pop goto 0x000BE0
0x000B98:
    push -5s
    if !(== 356s:flag 0s) goto 0x000BE0
0x000BB4:
    self.buffer = 25s
    self.wonned = 1s
    stog.alarm[1s] = 20s
0x000BE0:
    exit
