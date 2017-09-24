0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    call (draw_set_color[]:int32 (var 16777215))
    push (var 1s)
    push -5s
    push 3s:idealborder
    push -5s
    call (draw_rectangle[]:int32 1s:idealborder -5s 2s:idealborder -5s 0s:idealborder)
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x0000D8
0x0000B0:
    push self.x
    push (< -5s (- 1s:idealborder 16s))
    goto 0x0000DC
0x0000D8:
    push 0s
0x0000DC:
    if !pop goto 0x0000F8
0x0000E0:
    self.x = (+ self.x 4s)
0x0000F8:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x000130
0x000110:
    push self.x
    push (> -5s 0s:idealborder)
    goto 0x000134
0x000130:
    push 0s
0x000134:
    if !pop goto 0x000150
0x000138:
    self.x = (- self.x 4s)
0x000150:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x000190
0x000168:
    push self.y
    push (< -5s (- 3s:idealborder 16s))
    goto 0x000194
0x000190:
    push 0s
0x000194:
    if !pop goto 0x0001B0
0x000198:
    self.y = (+ self.y 4s)
0x0001B0:
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x0001E8
0x0001C8:
    push self.y
    push (> -5s 2s:idealborder)
    goto 0x0001EC
0x0001E8:
    push 0s
0x0001EC:
    if !pop goto 0x000208
0x0001F0:
    self.y = (- self.y 4s)
0x000208:
    exit
