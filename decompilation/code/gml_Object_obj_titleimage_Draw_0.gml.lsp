0x000000:
    call (draw_sprite[]:int32 self.y self.x (var 0s) self.sprite_index)
    if !(== self.d 1s) goto 0x000094
0x000040:
    call (draw_set_color[]:int32 (var 8421504))
    call (draw_set_font[]:int32 (var 3s))
    call (draw_text[]:int32 (var "[PRESS Z OR ENTER]") (var 180s) (var 120s))
0x000094:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x0000CC
0x0000AC:
    call (caster_free[]:int32 self.intronoise)
    call (room_goto_next[]:int32 )
0x0000CC:
    if !(== self.ballamount 3s) goto 0x000118
0x0000E0:
    if !(bool (keyboard_check_pressed[]:int32 (var 76s))) goto 0x000118
0x0000F8:
    self.ballamount = 4s
    call (snd_play[]:int32 (var 147s))
0x000118:
    if !(== self.ballamount 2s) goto 0x000150
0x00012C:
    if !(bool (keyboard_check_pressed[]:int32 (var 76s))) goto 0x000150
0x000144:
    self.ballamount = 3s
0x000150:
    if !(== self.ballamount 1s) goto 0x000188
0x000164:
    if !(bool (keyboard_check_pressed[]:int32 (var 65s))) goto 0x000188
0x00017C:
    self.ballamount = 2s
0x000188:
    if !(== self.ballamount 0s) goto 0x0001C0
0x00019C:
    if !(bool (keyboard_check_pressed[]:int32 (var 66s))) goto 0x0001C0
0x0001B4:
    self.ballamount = 1s
0x0001C0:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x000244
0x0001D8:
    self.special_x = (+ self.special_x 1s)
    if !(>= self.special_x 5s) goto 0x000244
0x000204:
    stog.alarm[0s] = 1800s
    stog.alarm[1s] = -1s
    self.d = 0s
    self.drawpw = 1s
0x000244:
    if !(== self.drawpw 1s) goto 0x0003C4
0x000258:
    self.d = 0s
    stog.alarm[0s] = 999s
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 2s))
    if !(== self.pw1 0s) goto 0x0002E0
0x0002B8:
    if !(== self.pw2 0s) goto 0x0002E0
0x0002CC:
    push (== self.pw3 0s)
    goto 0x0002E4
0x0002E0:
    push 0s
0x0002E4:
    if !pop goto 0x000310
0x0002E8:
    call (draw_text[]:int32 (var "No Information") (var 180s) (var 20s))
0x000310:
    if !(== self.pw1 1s) goto 0x00034C
0x000324:
    call (draw_text[]:int32 (var "Activity Level A") (var 170s) (var 20s))
0x00034C:
    if !(== self.pw2 1s) goto 0x000388
0x000360:
    call (draw_text[]:int32 (var "Activity Level B") (var 190s) (var 20s))
0x000388:
    if !(== self.pw3 1s) goto 0x0003C4
0x00039C:
    call (draw_text[]:int32 (var "Activity Level C") (var 210s) (var 20s))
0x0003C4:
    exit
