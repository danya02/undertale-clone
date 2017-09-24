0x000000:
    self.anim = (+ self.anim 3s)
    self.i = 0s
    if !(< self.i 20s) goto 0x0000DC
0x000038:
    call (draw_sprite_ext[]:int32 (var 0.2d) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ (+ -210s self.y) (* self.i 30s)) self.anim) self.x (var 0s) self.sprite_index)
    self.i = (+ self.i 1s)
    goto 0x000024
0x0000DC:
    if !(> self.anim 180s) goto 0x000108
0x0000F0:
    self.anim = (- self.anim 180s)
0x000108:
    self.myview = 0s
    push -1s
    if !(> 0s:view_xview 0s) goto 0x000164
0x000130:
    push -1s
    push 0s:view_xview
    push (< self.room_width (- -1s 0s:view_wview))
    goto 0x000168
0x000164:
    push 0s
0x000168:
    if !pop goto 0x000184
0x00016C:
    push -1s
    self.myview = 0s:view_xview
0x000184:
    push -1s
    push 0s:view_xview
    if !(>= self.room_width (- -1s 0s:view_wview)) goto 0x0001DC
0x0001B8:
    push self.room_width
    self.myview = (- -1s 0s:view_wview)
0x0001DC:
    self.x = (- self.xstart (* self.myview 0.5d))
0x000208:
    exit
