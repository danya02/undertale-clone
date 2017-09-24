0x000000:
    if !(== self.d 0s) goto 0x000020
0x000014:
    call (scr_depth[]:int32 )
0x000020:
    if !(== self.fun 0s) goto 0x000120
0x000034:
    self.myinteract = 0s
    if !(== self.hhspeed 0s) goto 0x000068
0x000054:
    push (== self.vhspeed 0s)
    goto 0x00006C
0x000068:
    push 0s
0x00006C:
    if !pop goto 0x000088
0x000070:
    self.image_index = 0s
    self.image_speed = 0s
0x000088:
    if (> (abs[]:int32 self.hhspeed) 0s) goto 0x0000C0
0x0000A4:
    push (> (abs[]:int32 self.vhspeed) 0s)
    goto 0x0000C4
0x0000C0:
    push 1s
0x0000C4:
    if !pop goto 0x000120
0x0000C8:
    self.image_speed = 0.2d
    if (== self.image_index 1s) goto 0x000104
0x0000F0:
    push (== self.image_index 3s)
    goto 0x000108
0x000104:
    push 1s
0x000108:
    if !pop goto 0x000120
0x00010C:
    call (snd_play[]:int32 (var 16s))
0x000120:
    push self.room_width
    self.gg = (- -1s 0s:view_wview)
    push self.room_height
    self.hh = (- -1s 0s:view_hview)
    push -1s
    if !(>= 0s:view_xview 0s) goto 0x0001EC
0x000184:
    push self.xhome
    push -1s
    self.x = (+ 0s:view_xview (floor[]:int32 (- -1s (* 0s:view_xview self.scrollspeed))))
    self.g = (- self.x self.xprevious)
0x0001EC:
    push -1s
    if !(>= 0s:view_xview self.gg) goto 0x000264
0x00020C:
    self.x = (+ self.xhome (floor[]:int32 (- self.gg (* self.gg self.scrollspeed))))
    self.g = (- self.x self.xprevious)
0x000264:
    push -1s
    if !(>= 0s:view_yview 0s) goto 0x0002CC
0x000280:
    push self.yhome
    push -1s
    self.y = (+ 0s:view_yview (floor[]:int32 (- -1s (* 0s:view_yview self.scrollspeed))))
0x0002CC:
    push -1s
    if !(>= 0s:view_yview self.hh) goto 0x000328
0x0002EC:
    self.y = (+ self.yhome (floor[]:int32 (- self.hh (* self.hh self.scrollspeed))))
0x000328:
    self.xhome = (+ self.xhome self.hhspeed)
    self.yhome = (+ self.yhome self.vhspeed)
0x000360:
    exit
