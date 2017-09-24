0x000000:
    call (draw_self_custom[]:int32 (+ self.ystart 40s) (var 0s) (var 9999s) (var 0s))
    if !(> self.yoff 1s) goto 0x000060
0x000048:
    self.y = (- self.y 1s)
0x000060:
    self.yoff = (- self.yoff 1s)
    push self.x
    push -1s
    if !(> 0s:view_xview (+ -1s 0s:view_wview)) goto 0x0000B8
0x0000AC:
    call (instance_destroy[]:int32 )
0x0000B8:
    push self.x
    if !(< -1s (- 0s:view_xview 10s)) goto 0x0000EC
0x0000E0:
    call (instance_destroy[]:int32 )
0x0000EC:
    push self.y
    push -1s
    if !(> 0s:view_yview (+ (+ -1s 0s:view_hview) 30s)) goto 0x000134
0x000128:
    call (instance_destroy[]:int32 )
0x000134:
    push self.y
    if !(< -1s 0s:view_yview) goto 0x000160
0x000154:
    call (instance_destroy[]:int32 )
0x000160:
    exit
