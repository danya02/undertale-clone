0x000000:
    self.thisnum = self.dmg
    if !(>= self.thisnum 0s) goto 0x0000A4
0x000024:
    self.place = 0s
    self.numadd = 10s
    if !(>= self.thisnum self.numadd) goto 0x0000A0
0x000054:
    if !(>= self.thisnum self.numadd) goto 0x0000A0
0x00006C:
    self.place = (+ self.place 1s)
    self.numadd = (* self.numadd 10s)
    goto 0x000054
0x0000A0:
    goto 0x0000BC
0x0000A4:
    self.thisnum = 0s
    self.place = 0s
0x0000BC:
    self.thisnum2 = self.thisnum
    self.i = self.place
    if !(>= self.i 0s) goto 0x000198
0x0000F0:
    stog.numnum[(int32 self.i)] = (floor[]:int32 (/ self.thisnum2 (power[]:int32 self.i (var 10s))))
    push self.thisnum2
    self.thisnum2 = (- -1s (* (int32 self.i):numnum (power[]:int32 self.i (var 10s))))
    self.i = (- self.i 1s)
    goto 0x0000DC
0x000198:
    if !(> self.thisnum 0s) goto 0x000530
0x0001AC:
    if !(== self.drawbar 1s) goto 0x000374
0x0001C0:
    call (draw_set_color[]:int32 (var 0s))
    push (var 0s)
    call (draw_rectangle[]:int32 (+ self.ystart 21s) self.x (+ -5s (round[]:int32 (+ (* (int32 global.mytarget):monstermaxhp self.stretchfactor) 1s))) (+ self.ystart 7s) (- self.x 1s))
    call (draw_set_color[]:int32 (var 4210752))
    push (var 0s)
    call (draw_rectangle[]:int32 (+ self.ystart 20s) self.x (+ -5s (round[]:int32 (* (int32 global.mytarget):monstermaxhp self.stretchfactor))) (+ self.ystart 8s) self.x)
    call (draw_set_color[]:int32 (var 65280))
    if !(> self.apparenthp 0s) goto 0x000374
0x000310:
    call (draw_rectangle[]:int32 (var 0s) (+ self.ystart 20s) (round[]:int32 (+ self.x (* self.apparenthp self.stretchfactor))) (+ self.ystart 8s) self.x)
0x000374:
    self.i = self.place
    if !(>= self.i 0s) goto 0x000530
0x000398:
    call (draw_set_color[]:int32 (var 255s))
    if !(<= self.stretchwidth 120s) goto 0x000460
0x0003C0:
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 255s) (var 0s) (var 1s) (var 1s) (- self.y 28s) (+ (- (+ self.x 30s) (* self.i 32s)) (* self.place 16s)) -1s (int32 self.i):numnum (var 33s))
    goto 0x000514
0x000460:
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 255s) (var 0s) (var 1s) (var 1s) (- self.y 28s) (+ (- (+ (- self.x 30s) (/ self.stretchwidth (double 2s))) (* self.i 32s)) (* self.place 16s)) -1s (int32 self.i):numnum (var 33s))
0x000514:
    self.i = (- self.i 1s)
    goto 0x000384
0x000530:
    if !(== self.thisnum 0s) goto 0x00081C
0x000544:
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.special 0s) goto 0x0005D8
0x000570:
    call (draw_sprite_ext[]:int32 (var 1s) (var 12632256) (var 0s) (var 1s) (var 1s) (- self.y 16s) (- self.x 10s) (var 0s) (var 32s))
0x0005D8:
    if !(== self.special 1s) goto 0x00081C
0x0005EC:
    call (draw_set_color[]:int32 (var 255s))
    call (draw_set_font[]:int32 (var 1s))
    self.ex = (choose[]:int32 (var 5s) (var 4s) (var 3s) (var 2s) (var 1s) (var 0s))
    if !(== self.ex 0s) goto 0x0006A0
0x000668:
    call (draw_text[]:int32 (var "Don't worry about it.") (- self.y 10s) (- self.x 10s))
0x0006A0:
    if !(== self.ex 1s) goto 0x0006EC
0x0006B4:
    call (draw_text[]:int32 (var "Absorbed") (- self.y 10s) (- self.x 10s))
0x0006EC:
    if !(== self.ex 2s) goto 0x000738
0x000700:
    call (draw_text[]:int32 (var "I'm lovin' it.") (- self.y 10s) (- self.x 10s))
0x000738:
    if !(== self.ex 3s) goto 0x000784
0x00074C:
    call (draw_text[]:int32 (var "But it didn't work.") (- self.y 10s) (- self.x 10s))
0x000784:
    if !(== self.ex 4s) goto 0x0007D0
0x000798:
    call (draw_text[]:int32 (var "nope") (- self.y 10s) (- self.x 10s))
0x0007D0:
    if !(== self.ex 5s) goto 0x00081C
0x0007E4:
    call (draw_text[]:int32 (var "FAILURE") (- self.y 10s) (- self.x 10s))
0x00081C:
    if !(> self.y self.ystart) goto 0x00085C
0x000834:
    self.y = self.ystart
    self.vspeed = 0s
    self.gravity = 0s
0x00085C:
    exit
