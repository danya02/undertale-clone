0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_line[]:int32 (var -2s) (+ self.x 4s) (- self.y 1s) (+ self.x 4s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_line[]:int32 (var -2s) (+ self.x 5s) (- self.y 1s) (+ self.x 5s))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_line[]:int32 (var -2s) (+ self.x 6s) (- self.y 1s) (+ self.x 6s))
    if !(> 1570.x (- self.x 50s)) goto 0x00016C
0x000158:
    push (== global.interact 0s)
    goto 0x000170
0x00016C:
    push 0s
0x000170:
    if !pop goto 0x000194
0x000174:
    self.vspeed = -3s
    self.image_speed = 0.25d
0x000194:
    if !(< self.y -30s) goto 0x0001B4
0x0001A8:
    call (instance_destroy[]:int32 )
0x0001B4:
    exit
