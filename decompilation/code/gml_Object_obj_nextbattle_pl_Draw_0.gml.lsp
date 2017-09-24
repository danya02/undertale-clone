0x000000:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text_transformed[]:int32 (random[]:int32 (var 3s)) (var 2s) (var 2s) (var "waiting for the#next battle...") (var 100s) (var 300s))
    if !(!= global.attacktype 50s) goto 0x0000D8
0x000074:
    call (draw_text_transformed[]:int32 (random[]:int32 (var 6s)) (var 2s) (var 2s) (+ "attack Number" (string[]:int32 (+ global.attacktype 1s))) (var 200s) (var 300s))
    goto 0x000138
0x0000D8:
    call (draw_text_transformed[]:int32 (random[]:int32 (var 6s)) (var 2s) (var 2s) (+ "final attack" (string[]:int32 (+ global.attacktype 1s))) (var 200s) (var 300s))
0x000138:
    call (draw_text[]:int32 (+ (string[]:int32 global.healno) " heal items left") (var 200s) (var 100s))
    call (draw_text[]:int32 (var "press H to use one") (var 220s) (var 100s))
    call (draw_text[]:int32 (+ (+ "your HP is " (string[]:int32 global.testhp)) "/20") (var 300s) (var 100s))
    call (draw_text[]:int32 (var "press SPACE to continue") (var 400s) (var 100s))
    if (== global.attacktype 38s) goto 0x00022C
0x000218:
    push (== global.attacktype 39s)
    goto 0x000230
0x00022C:
    push 1s
0x000230:
    if !pop goto 0x000274
0x000234:
    call (draw_set_color[]:int32 (var 16711680))
    call (draw_text[]:int32 (var "blue lasers don't hit#you if you don't#move") (var 300s) (var 300s))
0x000274:
    exit
