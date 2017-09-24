0x000000:
    if !(== self.drawnlab 1s) goto 0x000028
0x000014:
    push (!= global.entrance 3s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000044
0x000030:
    call (sprite_delete[]:int32 self.lab)
0x000044:
    push 1570.x
    self.charax = (* (- -1s 0s:view_xview) 2s)
    self.charay = (* 1570.y 2s)
    self.lab = (sprite_create_from_screen_x[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 40s) (var 60s) (- self.charay 5s) (- self.charax 10s))
    self.sprite_index = self.lab
    self.image_xscale = 0.25d
    self.image_yscale = 0.25d
    self.drawnlab = 1s
    if !(<= self.fps 21s) goto 0x00015C
0x000140:
    self.fps_counter = (+ self.fps_counter 1s)
    goto 0x000168
0x00015C:
    self.fps_counter = 0s
0x000168:
    if !(>= self.fps_counter 90s) goto 0x000208
0x00017C:
    self.not_allowed = 1s
    self.emer = (scr_marker[]:int32 (var 986s) (- self.y 1s) (- self.x 1s))
    push 0.5d
    stog.image_speed* = (int32 self.emer)
    push 198s
    stog.depth* = (int32 self.emer)
    call (instance_destroy[]:int32 )
    exit
0x000208:
    exit
