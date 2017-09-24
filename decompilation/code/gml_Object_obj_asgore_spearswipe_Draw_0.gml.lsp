0x000000:
    if !(>= self.image_index 5s) goto 0x000028
0x000014:
    push (< self.image_index 6s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000150
0x000030:
    push -1s
    if !(== (int32 self.curamt):type 1s) goto 0x0000C0
0x000054:
    call (draw_set_color[]:int32 (var 16754964))
    push (var 0s)
    push -5s
    push 3s:idealborder
    push -5s
    call (draw_rectangle[]:int32 1s:idealborder -5s 2s:idealborder -5s 0s:idealborder)
0x0000C0:
    push -1s
    if !(== (int32 self.curamt):type 2s) goto 0x000150
0x0000E4:
    call (draw_set_color[]:int32 (var 4235519))
    push (var 0s)
    push -5s
    push 3s:idealborder
    push -5s
    call (draw_rectangle[]:int32 1s:idealborder -5s 2s:idealborder -5s 0s:idealborder)
0x000150:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) self.image_yscale self.image_xscale self.y self.x self.image_index (var 635s))
    push -1s
    if !(== (int32 self.curamt):type 0s) goto 0x0001D8
0x0001CC:
    self.image_blend = 255s
0x0001D8:
    push -1s
    if !(== (int32 self.curamt):type 1s) goto 0x00020C
0x0001FC:
    self.image_blend = 16754964
0x00020C:
    push -1s
    if !(== (int32 self.curamt):type 2s) goto 0x000240
0x000230:
    self.image_blend = 4235519
0x000240:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) self.image_yscale self.image_xscale self.y self.x self.image_index (var 634s))
0x000294:
    exit
