0x000000:
    if !(bool (instance_exists[]:int32 (var 759s))) goto 0x00007C
0x000018:
    self.depth = 5s
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) 761.y 760.x (+ 759.y 5s) (+ 759.x 5s))
0x00007C:
    call (draw_sprite[]:int32 (var 400s) (var 270s) (var 0s) (var 15s))
    call (draw_set_color[]:int32 (var 255s))
    call (draw_rectangle[]:int32 (var 0s) (var 420s) (+ 310s (* global.maxhp 1.2d)) (var 400s) (var 310s))
    call (draw_set_color[]:int32 (var 65535))
    call (draw_rectangle[]:int32 (var 0s) (var 420s) (+ 310s (* global.hp 1.2d)) (var 400s) (var 310s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 7s))
    self.hpwrite = (string[]:int32 global.hp)
    if !(< global.hp 10s) goto 0x0001E8
0x0001C4:
    self.hpwrite = (+ "0" (string[]:int32 global.hp))
0x0001E8:
    call (draw_text[]:int32 (+ "LV " (string[]:int32 global.lv)) (var 400s) (var 200s))
    call (draw_text[]:int32 (+ (+ self.hpwrite " / ") (string[]:int32 global.maxhp)) (var 400s) (+ 330s (* global.maxhp 1.2d)))
0x00027C:
    exit
