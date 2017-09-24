0x000000:
    if !(< self.hoopx 650s) goto 0x000070
0x000014:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y 250s) self.hoopx (var 0s) (var 789s))
0x000070:
    if !(== self.drawa 1s) goto 0x0001AC
0x000084:
    self.alphysy = (+ self.alphysy 30s)
    self.heightdown = (- (+ self.alphysy 154s) (- self.y 52s))
    if !(< self.heightdown 0s) goto 0x0000E8
0x0000DC:
    self.heightdown = 0s
0x0000E8:
    self.width = 88s
    self.height = (- 154s self.heightdown)
    if !(> self.height 0s) goto 0x000178
0x000120:
    call (draw_sprite_part[]:int32 self.alphysy (- self.x 40s) self.height (var 88s) (var 0s) (var 0s) (var 0s) (var 790s))
    goto 0x0001AC
0x000178:
    self.drawa = 0s
    call (snd_play[]:int32 (var 21s))
    call (snd_stop[]:int32 (var 12s))
0x0001AC:
    if !(< self.hoopx 650s) goto 0x00021C
0x0001C0:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y 250s) self.hoopx (var 0s) (var 788s))
0x00021C:
    self.yoff = (* (floor[]:int32 self.acounter) 2s)
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.rot (var 2s) (var 2s) (- self.y (floor[]:int32 self.yoff)) (+ self.x self.xoff) (var 0s) (var 791s))
    if !(< self.acounter 4s) goto 0x000338
0x0002C4:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y (floor[]:int32 self.yoff)) (+ self.x self.topx) (var 0s) (var 794s))
0x000338:
    if !(== self.aturn 1s) goto 0x00046C
0x00034C:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) self.y (+ self.x 8s) (floor[]:int32 self.acounter) (var 792s))
    if !(>= self.acounter 4s) goto 0x000438
0x0003C4:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y self.yoff) (+ (+ self.x self.topx) 8s) global.faceemotion (var 793s))
0x000438:
    if !(< self.acounter 4s) goto 0x00046C
0x00044C:
    self.acounter = (+ self.acounter 0.5d)
0x00046C:
    if !(== self.con 1s) goto 0x000548
0x000480:
    if !(> self.hoopx (- self.x 60s)) goto 0x0004BC
0x0004A0:
    self.hoopx = (- self.hoopx 25s)
    goto 0x0004D4
0x0004BC:
    self.hoopx = (- self.x 60s)
0x0004D4:
    if !(< self.topx 100s) goto 0x000504
0x0004E8:
    self.topx = (+ self.topx 10s)
    goto 0x000548
0x000504:
    call (snd_play[]:int32 (var 12s))
    self.con = 3s
    self.drawa = 1s
    self.sinerf = 30s
    self.siner = 0s
0x000548:
    if !(== self.con 3s) goto 0x000570
0x00055C:
    push (== self.drawa 0s)
    goto 0x000574
0x000570:
    push 0s
0x000574:
    if !pop goto 0x000654
0x000578:
    self.siner = (+ self.siner 1s)
    self.sinerf = (- self.sinerf 2s)
    self.rot = (* (sin[]:int32 (/ self.siner (double 1s))) self.sinerf)
    self.xoff = (* (sin[]:int32 (/ self.siner (double 1s))) self.sinerf)
    if !(<= self.sinerf 0s) goto 0x000654
0x00061C:
    self.rot = 0s
    self.xoff = 0s
    self.con = 4s
    stog.alarm[4s] = 10s
0x000654:
    if !(== self.con 5s) goto 0x0006E0
0x000668:
    if !(< self.hoopx 650s) goto 0x000698
0x00067C:
    self.hoopx = (+ self.hoopx 20s)
    goto 0x0006A4
0x000698:
    self.hoopx = 650s
0x0006A4:
    if !(> self.topx 0s) goto 0x0006D4
0x0006B8:
    self.topx = (- self.topx 10s)
    goto 0x0006E0
0x0006D4:
    self.con = 6s
0x0006E0:
    if !(== self.fadein 1s) goto 0x000770
0x0006F4:
    self.image_blend = (merge_color[]:int32 (var 0.7d) self.image_blend (var 16777215))
    self.fadecounter = (+ self.fadecounter 1s)
    if !(> self.fadecounter 20s) goto 0x000770
0x000754:
    self.fadein = 0s
    self.image_blend = 16777215
0x000770:
    if !(> self.shake 0s) goto 0x0007F4
0x000784:
    self.x = (- (+ self.xstart (random[]:int32 self.shake)) (random[]:int32 self.shake))
    self.y = (- (+ self.ystart (random[]:int32 self.shake)) (random[]:int32 self.shake))
0x0007F4:
    exit
