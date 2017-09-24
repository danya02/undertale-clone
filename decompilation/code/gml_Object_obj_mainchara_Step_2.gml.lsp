0x000000:
    if !(== (keyboard_check[]:int32 (var 37s)) 0s) goto 0x00007C
0x00001C:
    if !(== (keyboard_check[]:int32 (var 39s)) 0s) goto 0x00007C
0x000038:
    if !(== (keyboard_check[]:int32 (var 40s)) 0s) goto 0x00007C
0x000054:
    if !(== (keyboard_check[]:int32 (var 38s)) 0s) goto 0x00007C
0x000070:
    self.moving = 0s
0x00007C:
    if !(> global.interact 0s) goto 0x0000AC
0x000090:
    self.moving = 0s
    self.movement = 0s
    goto 0x0000B8
0x0000AC:
    self.movement = 1s
0x0000B8:
    if (!= self.xprevious self.x) goto 0x0000E8
0x0000D0:
    push (!= self.yprevious self.y)
    goto 0x0000EC
0x0000E8:
    push 1s
0x0000EC:
    if !pop goto 0x0000FC
0x0000F0:
    self.moving = 1s
0x0000FC:
    if !(== self.moving 0s) goto 0x000128
0x000110:
    self.image_speed = 0s
    self.image_index = 0s
0x000128:
    if !(== global.interact 0s) goto 0x000168
0x00013C:
    if !(== self.moving 1s) goto 0x000168
0x000150:
    global.encounter = (+ global.encounter 1s)
0x000168:
    if !(== self.cutscene 0s) goto 0x000228
0x00017C:
    if !(== (instance_exists[]:int32 (var 184s)) 0s) goto 0x000228
0x000198:
    push self.x
    stog.view_xview[0s] = (round[]:int32 (+ (- -1s (/ 0s:view_wview (double 2s))) 10s))
    push self.y
    stog.view_yview[0s] = (round[]:int32 (+ (- -1s (/ 0s:view_hview (double 2s))) 10s))
0x000228:
    pushenv 0s 0x000244
0x000230:
    call (event_user[]:int32 (var 0s))
0x000244:
    popenv 0x000230
0x000248:
    exit
