0x000000:
    call (draw_set_color[]:int32 (var 0s))
    push (var 0s)
    push -5s
    push 3s:idealborder
    push -5s
    call (draw_rectangle[]:int32 (+ 1s:idealborder 60s) -5s (+ 3s:idealborder 40s) -5s (- 0s:idealborder 60s))
    push (var 0s)
    push -5s
    push (+ 3s:idealborder 40s)
    call (draw_rectangle[]:int32 -5s 0s:idealborder -5s 2s:idealborder (var 0s))
    push (var 0s)
    push -5s
    push (+ 3s:idealborder 40s)
    call (draw_rectangle[]:int32 -5s 1s:idealborder -5s 2s:idealborder (var 640s))
    call (script_execute[]:int32 (var 157s))
0x00013C:
    exit
