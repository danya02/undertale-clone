0x000000:
    push -1s
    push 0s:view_yview
    call (draw_sprite[]:int32 -1s 0s:view_xview self.image_index self.sprite_index)
    if !(== self.buffer 1s) goto 0x00006C
0x000050:
    push (== (keyboard_multicheck_pressed[]:int32 (var 1s)) 1s)
    goto 0x000070
0x00006C:
    push 0s
0x000070:
    if !pop goto 0x000080
0x000074:
    self.buffer = 2s
0x000080:
    if !(== self.buffer 1s) goto 0x0000B0
0x000094:
    push (== (keyboard_multicheck_pressed[]:int32 (var 0s)) 1s)
    goto 0x0000B4
0x0000B0:
    push 0s
0x0000B4:
    if !pop goto 0x0000C4
0x0000B8:
    self.buffer = 2s
0x0000C4:
    global.interact = 1s
    if !(== self.buffer 2s) goto 0x0000FC
0x0000E4:
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x0000FC:
    exit
