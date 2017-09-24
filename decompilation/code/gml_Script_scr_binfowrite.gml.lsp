0x000000:
    push -5s
    if !(== 271s:flag 0s) goto 0x0002DC
0x00001C:
    call (draw_set_color[]:int32 (var 255s))
    call (draw_rectangle[]:int32 (var 0s) (var 420s) (+ 275s (* global.maxhp 1.2d)) (var 400s) (var 275s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_rectangle[]:int32 (var 0s) (var 420s) (+ 275s (* global.hp 1.2d)) (var 400s) (var 275s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 7s))
    self.hpwrite = (string[]:int32 global.hp)
    if !(< global.hp 10s) goto 0x00015C
0x000138:
    self.hpwrite = (+ "0" (string[]:int32 global.hp))
0x00015C:
    if !(< global.hp 0s) goto 0x000180
0x000170:
    self.hpwrite = "0"
0x000180:
    push -5s
    if !(== 509s:flag 1s) goto 0x0001AC
0x00019C:
    self.hpwrite = "00.001"
0x0001AC:
    push -5s
    if !(== 509s:flag 2s) goto 0x0001D8
0x0001C8:
    self.hpwrite = "00.0001"
0x0001D8:
    push -5s
    if !(== 509s:flag 3s) goto 0x000204
0x0001F4:
    self.hpwrite = "00.000001"
0x000204:
    push -5s
    if !(== 509s:flag 4s) goto 0x000230
0x000220:
    self.hpwrite = "00.0000000001"
0x000230:
    call (draw_text[]:int32 (+ (+ self.hpwrite " / ") (string[]:int32 global.maxhp)) (var 400s) (+ 290s (* global.maxhp 1.2d)))
    call (draw_text[]:int32 (+ (+ (string[]:int32 global.charname) "   LV ") (string[]:int32 global.lv)) (var 400s) (var 30s))
    goto 0x0006D4
0x0002DC:
    call (draw_set_color[]:int32 (merge_color[]:int32 (var 0.5d) (var 128s) (var 255s)))
    call (draw_rectangle[]:int32 (var 0s) (var 420s) (+ 255s (* global.maxhp 1.2d)) (var 400s) (var 255s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_rectangle[]:int32 (var 0s) (var 420s) (+ 255s (* global.hp 1.2d)) (var 400s) (var 255s))
    call (draw_set_color[]:int32 (var 16711935))
    if !(> global.km 40s) goto 0x0003F8
0x0003EC:
    global.km = 40s
0x0003F8:
    if !(> global.km global.hp) goto 0x000428
0x000410:
    global.km = (- global.hp 1s)
0x000428:
    call (draw_rectangle[]:int32 (var 0s) (var 420s) (- (+ 255s (* global.hp 1.2d)) (* global.km 1.2d)) (var 400s) (+ 255s (* global.hp 1.2d)))
    call (draw_sprite[]:int32 (var 405s) (+ 265s (* global.maxhp 1.2d)) (var 0s) (var 686s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 7s))
    self.hpwrite = (string[]:int32 global.hp)
    if !(> global.km 0s) goto 0x00055C
0x000544:
    call (draw_set_color[]:int32 (var 16711935))
0x00055C:
    if !(< global.hp 10s) goto 0x000594
0x000570:
    self.hpwrite = (+ "0" (string[]:int32 global.hp))
0x000594:
    if !(< global.hp 0s) goto 0x0005B8
0x0005A8:
    self.hpwrite = "0"
0x0005B8:
    call (draw_text[]:int32 (+ (+ self.hpwrite " / ") (string[]:int32 global.maxhp)) (var 400s) (+ 305s (* global.maxhp 1.2d)))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (+ (+ (string[]:int32 global.charname) "   LV ") (string[]:int32 global.lv)) (var 400s) (var 30s))
    if !(bool (instance_exists[]:int32 (var 183s))) goto 0x0006A8
0x000690:
    pushenv 183s 0x0006A4
0x000698:
    call (instance_destroy[]:int32 )
0x0006A4:
    popenv 0x000698
0x0006A8:
    call (draw_sprite[]:int32 (var 400s) (var 220s) (var 0s) (var 15s))
0x0006D4:
    exit
