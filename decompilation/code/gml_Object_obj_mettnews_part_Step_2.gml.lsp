0x000000:
    if !(== (instance_exists[]:int32 (var 184s)) 0s) goto 0x0000F0
0x00001C:
    if !(== self.on 1s) goto 0x0000F0
0x000030:
    push 1570.x
    stog.view_xview[0s] = (round[]:int32 (+ (- -1s (/ 0s:view_wview (double 2s))) 10s))
    push 1570.y
    stog.view_yview[0s] = (round[]:int32 (+ (- -1s (/ 0s:view_hview (double 2s))) 10s))
    push -1s
    if !(<= 0s:view_yview 0s) goto 0x0000F0
0x0000DC:
    stog.view_yview[0s] = 0s
0x0000F0:
    if !(== self.on 1s) goto 0x00017C
0x000104:
    push -1s
    self.x = (+ 0s:view_xview self.stayx)
    push -1s
    self.y = (+ 0s:view_yview self.stayy)
    push -1s
    if !(<= 0s:view_yview 0s) goto 0x00017C
0x000168:
    stog.view_yview[0s] = 0s
0x00017C:
    if !(== self.on 0s) goto 0x0001E4
0x000190:
    self.gravity = 0.4d
    self.image_angle = (+ self.image_angle self.ang)
    if !(> self.y self.room_height) goto 0x0001E4
0x0001D8:
    call (instance_destroy[]:int32 )
0x0001E4:
    push -1s
    if !(<= 0s:view_yview 0s) goto 0x000214
0x000200:
    stog.view_yview[0s] = 0s
0x000214:
    exit
