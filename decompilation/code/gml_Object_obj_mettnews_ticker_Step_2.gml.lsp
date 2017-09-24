0x000000:
    if !(== (instance_exists[]:int32 (var 184s)) 0s) goto 0x0000C0
0x00001C:
    if !(== self.on 1s) goto 0x0000C0
0x000030:
    push 1570.x
    stog.view_xview[0s] = (round[]:int32 (+ (- -1s (/ 0s:view_wview (double 2s))) 10s))
    push 1570.y
    stog.view_yview[0s] = (round[]:int32 (+ (- -1s (/ 0s:view_hview (double 2s))) 10s))
0x0000C0:
    if !(== self.on 1s) goto 0x0001BC
0x0000D4:
    push -1s
    self.x = (+ 0s:view_xview self.stayx)
    push self.x
    if !(>= self.room_width (- -1s 0s:view_wview)) goto 0x000148
0x000124:
    push self.room_width
    self.x = (- -1s 0s:view_wview)
0x000148:
    push -1s
    self.y = (+ 0s:view_yview self.stayy)
    if !(<= self.y 200s) goto 0x00018C
0x000180:
    self.y = 200s
0x00018C:
    push -1s
    if !(<= 0s:view_yview 0s) goto 0x0001BC
0x0001A8:
    stog.view_yview[0s] = 0s
0x0001BC:
    push -1s
    if !(<= 0s:view_yview 0s) goto 0x0001EC
0x0001D8:
    stog.view_yview[0s] = 0s
0x0001EC:
    exit
