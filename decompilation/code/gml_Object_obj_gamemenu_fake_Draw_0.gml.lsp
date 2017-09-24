0x000000:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 10s))
    self.minutes = 9999s
    self.seconds = 99s
    if !(== self.seconds 60s) goto 0x000064
0x000058:
    self.seconds = 0s
0x000064:
    if !(< self.seconds 10s) goto 0x00009C
0x000078:
    self.seconds = (+ "0" (string[]:int32 self.seconds))
0x00009C:
    call (draw_text[]:int32 self.name (var 60s) (var 70s))
    call (draw_text[]:int32 (var "LV 9999") (var 60s) (var 140s))
    call (draw_text[]:int32 (+ (+ (string[]:int32 self.minutes) ":") (string[]:int32 self.seconds)) (var 60s) (var 210s))
    call (draw_text[]:int32 (var "My World") (var 80s) (var 70s))
    if !(== self.selected3 0s) goto 0x00018C
0x000170:
    call (draw_set_color[]:int32 (var 65535))
    goto 0x0001A4
0x00018C:
    call (draw_set_color[]:int32 (var 16777215))
0x0001A4:
    call (draw_text[]:int32 (var "Continue") (var 110s) (var 85s))
    if !(== self.selected3 1s) goto 0x0001FC
0x0001E0:
    call (draw_set_color[]:int32 (var 65535))
    goto 0x000214
0x0001FC:
    call (draw_set_color[]:int32 (var 16777215))
0x000214:
    call (draw_text[]:int32 (var "Restart") (var 110s) (var 175s))
    if !(bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x000274
0x000254:
    if !(== self.selected3 0s) goto 0x000274
0x000268:
    self.selected3 = 1s
0x000274:
    if !(bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x0002AC
0x00028C:
    if !(== self.selected3 1s) goto 0x0002AC
0x0002A0:
    self.selected3 = 0s
0x0002AC:
    self.buffer = (+ self.buffer 1s)
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0002F0
0x0002DC:
    push (== self.selected3 0s)
    goto 0x0002F4
0x0002F0:
    push 0s
0x0002F4:
    if !pop goto 0x00032C
0x0002F8:
    if !(> self.buffer 20s) goto 0x00032C
0x00030C:
    call (caster_stop[]:int32 (var -3s))
    call (room_goto_next[]:int32 )
0x00032C:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000358
0x000344:
    push (== self.selected3 1s)
    goto 0x00035C
0x000358:
    push 0s
0x00035C:
    if !pop goto 0x000380
0x000360:
    if !(> self.buffer 10s) goto 0x000380
0x000374:
    self.selected3 = 0s
0x000380:
    exit
