0x000000:
    call (draw_set_font[]:int32 (var 1s))
    call (draw_set_color[]:int32 (var 16777215))
    if !(> 307.phase 2s) goto 0x000078
0x000040:
    call (draw_set_color[]:int32 (var 65535))
    if !(== 307.answer -1s) goto 0x000078
0x00006C:
    self.visible = 0s
0x000078:
    if !(== self.answered 1s) goto 0x0000D4
0x00008C:
    if !(== 307.correct self.ano) goto 0x0000C0
0x0000A4:
    call (draw_set_color[]:int32 (var 32768))
    goto 0x0000D4
0x0000C0:
    call (draw_set_color[]:int32 (var 255s))
0x0000D4:
    self.atext2 = self.atext
    if !(== self.atext "special1") goto 0x0001CC
0x0000FC:
    if !(== self.qno 0s) goto 0x000130
0x000110:
    self.atext2 = (string[]:int32 (+ 307.mettamt 11s))
0x000130:
    if !(== self.qno 1s) goto 0x000164
0x000144:
    self.atext2 = (string[]:int32 (+ 307.mettamt 6s))
0x000164:
    if !(== self.qno 2s) goto 0x000198
0x000178:
    self.atext2 = (string[]:int32 (+ 307.mettamt 8s))
0x000198:
    if !(== self.qno 3s) goto 0x0001CC
0x0001AC:
    self.atext2 = (string[]:int32 (+ 307.mettamt 10s))
0x0001CC:
    self.sizefactor = 1s
    self.txtsize = (string_length[]:int32 self.atext2)
    if !(> self.txtsize 11s) goto 0x000220
0x000204:
    self.sizefactor = (/ (double 11s) self.txtsize)
0x000220:
    if (== self.qno 0s) goto 0x000248
0x000234:
    push (== self.qno 2s)
    goto 0x00024C
0x000248:
    push 1s
0x00024C:
    if !pop goto 0x0002D0
0x000250:
    call (draw_set_halign[]:int32 (var 2s))
    call (draw_text_transformed[]:int32 (var 1s) (var 1s) self.sizefactor self.atext2 (+ self.y (random[]:int32 (var 2s))) (+ (- self.x 20s) (random[]:int32 (var 2s))))
0x0002D0:
    if (== self.qno 1s) goto 0x0002F8
0x0002E4:
    push (== self.qno 3s)
    goto 0x0002FC
0x0002F8:
    push 1s
0x0002FC:
    if !pop goto 0x00036C
0x000300:
    call (draw_text_transformed[]:int32 (var 1s) (var 1s) self.sizefactor self.atext2 (+ self.y (random[]:int32 (var 2s))) (+ (+ self.x 60s) (random[]:int32 (var 2s))))
0x00036C:
    if !(== self.answered 0s) goto 0x000394
0x000380:
    push (== 307.phase 2s)
    goto 0x000398
0x000394:
    push 0s
0x000398:
    if !pop goto 0x0003C8
0x00039C:
    call (draw_sprite[]:int32 self.y self.x (var 0s) self.sprite_index)
0x0003C8:
    call (draw_set_halign[]:int32 (var 0s))
0x0003DC:
    exit
