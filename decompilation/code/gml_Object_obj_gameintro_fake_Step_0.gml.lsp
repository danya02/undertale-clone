0x000000:
    if !(== self.skipper 1s) goto 0x00002C
0x000014:
    push (bool (keyboard_multicheck_pressed[]:int32 (var 0s)))
    goto 0x000030
0x00002C:
    push 0s
0x000030:
    if !pop goto 0x000040
0x000034:
    call (room_goto_next[]:int32 )
0x000040:
    exit
