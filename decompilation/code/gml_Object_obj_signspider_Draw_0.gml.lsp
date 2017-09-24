0x000000:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
    if !(== self.con 1s) goto 0x000610
0x00006C:
    self.image_index = 1s
    self.image_speed = 0s
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.signimg (var 414s))
    if !(>= self.signimg 4s) goto 0x0005DC
0x0000F0:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 2s))
    call (draw_text[]:int32 (var "Up Next") (- self.y 100s) (- self.x 20s))
    if (== self.signno 0s) goto 0x0001A4
0x000168:
    if (== self.signno 1s) goto 0x0001A4
0x00017C:
    if (== self.signno 6s) goto 0x0001A4
0x000190:
    push (== self.signno 10s)
    goto 0x0001A8
0x0001A4:
    push 1s
0x0001A8:
    if !pop goto 0x0001E0
0x0001AC:
    call (draw_sprite[]:int32 (- self.y 70s) self.x (var 0s) (var 405s))
0x0001E0:
    if !(== self.signno 8s) goto 0x000228
0x0001F4:
    call (draw_sprite[]:int32 (- self.y 70s) self.x (var 0s) (var 409s))
0x000228:
    if !(== self.signno 12s) goto 0x0002B4
0x00023C:
    call (draw_sprite[]:int32 (- self.y 70s) (- self.x 15s) (var 0s) (var 409s))
    call (draw_sprite[]:int32 (- self.y 70s) (+ self.x 5s) (var 0s) (var 409s))
0x0002B4:
    if (== self.signno 2s) goto 0x0002DC
0x0002C8:
    push (== self.signno 13s)
    goto 0x0002E0
0x0002DC:
    push 1s
0x0002E0:
    if !pop goto 0x00035C
0x0002E4:
    call (draw_sprite[]:int32 (- self.y 70s) (- self.x 15s) (var 0s) (var 405s))
    call (draw_sprite[]:int32 (- self.y 70s) (+ self.x 15s) (var 0s) (var 405s))
0x00035C:
    if !(== self.signno 11s) goto 0x0003E8
0x000370:
    call (draw_sprite[]:int32 (- self.y 70s) (- self.x 15s) (var 0s) (var 406s))
    call (draw_sprite[]:int32 (- self.y 70s) (+ self.x 15s) (var 0s) (var 406s))
0x0003E8:
    if (== self.signno 3s) goto 0x000424
0x0003FC:
    if (== self.signno 5s) goto 0x000424
0x000410:
    push (== self.signno 7s)
    goto 0x000428
0x000424:
    push 1s
0x000428:
    if !pop goto 0x0004A4
0x00042C:
    call (draw_sprite[]:int32 (- self.y 70s) (- self.x 15s) (var 0s) (var 405s))
    call (draw_sprite[]:int32 (- self.y 70s) (+ self.x 5s) (var 0s) (var 406s))
0x0004A4:
    if (== self.signno 4s) goto 0x0004E0
0x0004B8:
    if (== self.signno 9s) goto 0x0004E0
0x0004CC:
    push (== self.signno 15s)
    goto 0x0004E4
0x0004E0:
    push 1s
0x0004E4:
    if !pop goto 0x00051C
0x0004E8:
    call (draw_sprite[]:int32 (- self.y 70s) self.x (var 0s) (var 407s))
0x00051C:
    if !(== self.signno 14s) goto 0x0005DC
0x000530:
    call (draw_sprite[]:int32 (- self.y 70s) (- self.x 25s) (var 0s) (var 405s))
    call (draw_sprite[]:int32 (- self.y 70s) self.x (var 0s) (var 406s))
    call (draw_sprite[]:int32 (- self.y 70s) (+ self.x 25s) (var 0s) (var 409s))
0x0005DC:
    if !(< self.signimg 4s) goto 0x000610
0x0005F0:
    self.signimg = (+ self.signimg 0.5d)
0x000610:
    self.buffer = (- self.buffer 1s)
    if (> global.myfight 0s) goto 0x000650
0x00063C:
    push (> global.mnfight 0s)
    goto 0x000654
0x000650:
    push 1s
0x000654:
    if !pop goto 0x000694
0x000658:
    if !(< self.con 2s) goto 0x000680
0x00066C:
    push (< self.buffer 1s)
    goto 0x000684
0x000680:
    push 0s
0x000684:
    if !pop goto 0x000694
0x000688:
    self.con = 2s
0x000694:
    if !(== self.con 2s) goto 0x000740
0x0006A8:
    self.signimg = (- self.signimg 0.5d)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.signimg (var 414s))
    if !(< self.signimg 1s) goto 0x000740
0x000734:
    self.con = 3s
0x000740:
    if !(== self.con 3s) goto 0x0007B4
0x000754:
    self.image_speed = 0.5d
    if !(< self.hspeed 10s) goto 0x000794
0x00077C:
    self.hspeed = (+ self.hspeed 1s)
0x000794:
    if !(> self.x 650s) goto 0x0007B4
0x0007A8:
    call (instance_destroy[]:int32 )
0x0007B4:
    exit
