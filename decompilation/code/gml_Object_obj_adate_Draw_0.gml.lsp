0x000000:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x000060
0x000018:
    if !(== 782.halt 0s) goto 0x000044
0x00002C:
    self.face_speed = 0.25d
    goto 0x00005C
0x000044:
    self.face_index = 0s
    self.face_speed = 0s
0x00005C:
    goto 0x000078
0x000060:
    self.face_index = 0s
    self.face_speed = 0s
0x000078:
    if !(== global.faceemotion 8s) goto 0x0000A0
0x00008C:
    self.face_speed = 0.13d
0x0000A0:
    call (draw_set_color[]:int32 (var 16777215))
    if !(== self.choicer 1s) goto 0x000218
0x0000CC:
    if !(== self.choice 0s) goto 0x00012C
0x0000E0:
    push -5s
    push (+ 2s:idealborder 60s)
    call (draw_sprite[]:int32 -5s (+ 0s:idealborder 40s) (var 0s) (var 34s))
0x00012C:
    if !(== self.choice 1s) goto 0x00018C
0x000140:
    push -5s
    push (+ 2s:idealborder 60s)
    call (draw_sprite[]:int32 -5s (+ 0s:idealborder 300s) (var 0s) (var 34s))
0x00018C:
    if (bool (keyboard_check_pressed[]:int32 (var 39s))) goto 0x0001BC
0x0001A4:
    push (bool (keyboard_check_pressed[]:int32 (var 37s)))
    goto 0x0001C0
0x0001BC:
    push 1s
0x0001C0:
    if !pop goto 0x0001F4
0x0001C4:
    if !(== self.choice 0s) goto 0x0001E8
0x0001D8:
    self.choice = 1s
    goto 0x0001F4
0x0001E8:
    self.choice = 0s
0x0001F4:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000218
0x00020C:
    self.choicer = 2s
0x000218:
    if !(== self.fadeouter 1s) goto 0x0002D0
0x00022C:
    if !(< self.fadeamt 1s) goto 0x000260
0x000240:
    self.fadeamt = (+ self.fadeamt 0.04d)
0x000260:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_set_alpha[]:int32 self.fadeamt)
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
0x0002D0:
    if !(== self.fadeouter 2s) goto 0x000398
0x0002E4:
    if !(> self.fadeamt 0s) goto 0x00031C
0x0002F8:
    self.fadeamt = (- self.fadeamt 0.04d)
    goto 0x000328
0x00031C:
    self.fadeouter = 0s
0x000328:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_set_alpha[]:int32 self.fadeamt)
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
0x000398:
    exit
