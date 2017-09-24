0x000000:
    self.onscreen = 0s
    push self.x
    if !(> -1s (- (int32 self.view_current):view_xview self.argument0)) goto 0x000090
0x000040:
    push self.x
    push -1s
    push (< (int32 self.view_current):view_xview (+ (+ -1s (int32 self.view_current):view_wview) self.argument0))
    goto 0x000094
0x000090:
    push 0s
0x000094:
    if !pop goto 0x000130
0x000098:
    push self.y
    push -1s
    if !(< (int32 self.view_current):view_hview (+ (+ -1s (int32 self.view_current):view_yview) self.argument1)) goto 0x00011C
0x0000E8:
    push self.y
    push (> -1s (- (int32 self.view_current):view_yview self.argument1))
    goto 0x000120
0x00011C:
    push 0s
0x000120:
    if !pop goto 0x000130
0x000124:
    self.onscreen = 1s
0x000130:
    exit
