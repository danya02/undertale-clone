0x000000:
    self.siner_o = (+ self.siner_o 1s)
    if !(== self.naming 3s) goto 0x000508
0x00002C:
    if !(> self.mlevel 0s) goto 0x000064
0x000040:
    call (draw_background[]:int32 (var -120s) (var 0s) (var 9s))
0x000064:
    if !(== self.mlevel 1s) goto 0x0000B8
0x000078:
    if !(== self.fk 0s) goto 0x0000B8
0x00008C:
    call (draw_sprite[]:int32 (var 169s) (var 147s) (var 0s) (var 1095s))
0x0000B8:
    if !(== self.mlevel 2s) goto 0x0000F8
0x0000CC:
    call (draw_sprite[]:int32 (var 138s) (var 125s) (var 0s) (var 1118s))
0x0000F8:
    if !(== self.mlevel 3s) goto 0x00019C
0x00010C:
    call (draw_sprite[]:int32 (var 138s) (var 125s) (/ self.siner_o (double 8s)) (var 1119s))
    call (draw_sprite[]:int32 (var 151s) (var 241s) (var 0s) (var 1314s))
    call (draw_sprite[]:int32 (var 164s) (var 271s) (var 0s) (var 1357s))
0x00019C:
    if !(== self.mlevel 4s) goto 0x00026C
0x0001B0:
    call (draw_sprite[]:int32 (var 138s) (var 125s) (/ self.siner_o (double 8s)) (var 1119s))
    call (draw_sprite[]:int32 (var 151s) (var 243s) (var 0s) (var 1311s))
    call (draw_sprite[]:int32 (var 103s) (var 240s) (var 0s) (var 1411s))
    call (draw_sprite[]:int32 (var 33s) (var 63s) (var 0s) (var 1357s))
0x00026C:
    if !(== self.mlevel 5s) goto 0x000368
0x000280:
    call (draw_sprite[]:int32 (var 138s) (var 125s) (/ self.siner_o (double 8s)) (var 1119s))
    call (draw_sprite[]:int32 (var 167s) (var 270s) (var 0s) (var 1640s))
    call (draw_sprite[]:int32 (var 132s) (var 272s) (var 0s) (var 1311s))
    call (draw_sprite[]:int32 (var 84s) (var 269s) (var 0s) (var 1411s))
    call (draw_sprite[]:int32 (var 169s) (var 20s) (var 0s) (var 1344s))
0x000368:
    if !(== self.mlevel 6s) goto 0x000508
0x00037C:
    call (draw_sprite[]:int32 (var 138s) (var 143s) (var 0s) (var 1104s))
    call (draw_sprite[]:int32 (var 147s) (var 119s) (var 0s) (var 1314s))
    call (draw_sprite[]:int32 (var 161s) (var 172s) (var 0s) (var 1354s))
    call (draw_sprite[]:int32 (var 136s) (var 99s) (var 0s) (var 1405s))
    call (draw_sprite[]:int32 (var 158s) (var 74s) (var 0s) (var 1639s))
    call (draw_sprite[]:int32 (var 130s) (var 195s) (var 0s) (var 1905s))
    call (draw_sprite[]:int32 (var 157s) (var 9s) (var 0s) (var 1128s))
    call (draw_sprite[]:int32 (var 139s) (var 28s) (var 0s) (var 1666s))
    call (draw_sprite[]:int32 (var 162s) (var 262s) (var 0s) (var 1393s))
0x000508:
    call (script_execute[]:int32 (var 53s))
    if !(== self.naming 3s) goto 0x000584
0x000530:
    call (draw_set_color[]:int32 (var 8421504))
    call (draw_set_font[]:int32 (var 3s))
    call (draw_text[]:int32 (var "UNDERTALE v1.001 (C) Toby Fox 2015") (var 232s) (var 70s))
0x000584:
    exit
