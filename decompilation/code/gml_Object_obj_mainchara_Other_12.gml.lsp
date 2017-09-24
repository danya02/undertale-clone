0x000000:
    if !(== global.interact 0s) goto 0x000030
0x000014:
    push -5s
    push (== 17s:flag 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000078
0x000038:
    call (snd_play[]:int32 (var 114s))
    global.interact = 5s
    global.menuno = 0s
    call (keyboard_clear[]:int32 (var 17s))
0x000078:
    exit
