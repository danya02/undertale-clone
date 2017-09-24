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
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ self.ystart 28s) (+ (+ self.x (* global.floweymaxhp self.stretchfactor)) 1s) (+ self.ystart 7s) (- self.x 1s))
    call (draw_set_color[]:int32 (var 4210752))
    call (draw_rectangle[]:int32 (var 0s) (+ self.ystart 28s) (+ self.x (* global.floweymaxhp self.stretchfactor)) (+ self.ystart 8s) self.x)
    call (draw_set_color[]:int32 (var 65280))
    if !(> self.apparenthp 0s) goto 0x000314
0x0002B8:
    call (draw_rectangle[]:int32 (var 0s) (+ self.ystart 28s) (+ self.x (* self.apparenthp self.stretchfactor)) (+ self.ystart 8s) self.x)
0x000314:
    self.i = self.place
    if !(>= self.i 0s) goto 0x00041C
0x000338:
    call (draw_set_color[]:int32 (var 255s))
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 255s) (var 0s) (var 1s) (var 1s) (- self.y 28s) (+ (- (+ (- self.x 20s) (/ self.stretchwidth (double 2s))) (* self.i 32s)) (* self.place 16s)) -1s (int32 self.i):numnum (var 33s))
    self.i = (- self.i 1s)
    goto 0x000324
0x00041C:
    if !(> self.y self.ystart) goto 0x00045C
0x000434:
    self.y = self.ystart
    self.vspeed = 0s
    self.gravity = 0s
0x00045C:
    exit
