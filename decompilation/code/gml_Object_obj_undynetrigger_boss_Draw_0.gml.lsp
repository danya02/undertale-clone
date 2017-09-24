0x000000:
    stog.view_visible[1s] = 0s
    if !(== self.fakedrawer 1s) goto 0x000040
0x000028:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000130
0x000048:
    stog.view_visible[1s] = 1s
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (+ self.yy 235s) (+ self.xx 304s) (+ self.yy 160s) (+ self.xx 16s))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ self.yy 232s) (+ self.xx 301s) (+ self.yy 163s) (+ self.xx 19s))
0x000130:
    exit
