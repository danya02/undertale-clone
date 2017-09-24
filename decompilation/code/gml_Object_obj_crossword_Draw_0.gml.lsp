0x000000:
    call (draw_me[]:int32 )
    if !(== self.cross 1s) goto 0x00005C
0x000020:
    self.depth = 0s
    call (draw_sprite[]:int32 (var 20s) (var 20s) self.nightmare (var 840s))
    goto 0x00006C
0x00005C:
    self.depth = 100000
0x00006C:
    if !(== self.cross 1s) goto 0x000094
0x000080:
    push (== self.cancel 1s)
    goto 0x000098
0x000094:
    push 0s
0x000098:
    if !pop goto 0x00010C
0x00009C:
    if (== (keyboard_multicheck_pressed[]:int32 (var 0s)) 1s) goto 0x0000D4
0x0000B8:
    push (== (keyboard_multicheck_pressed[]:int32 (var 1s)) 1s)
    goto 0x0000D8
0x0000D4:
    push 1s
0x0000D8:
    if !pop goto 0x00010C
0x0000DC:
    self.cancel = 0s
    self.cross = 0s
    global.interact = 0s
    self.myinteract = 0s
0x00010C:
    exit
