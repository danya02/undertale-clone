0x000000:
    stog.alarm[1s] = 3s
    self.canchoose = 0s
    push -1s
    self.add = (int32 self.view_current):view_xview
    self.x = (+ 89s self.add)
    push 210s
    self.y = (+ -1s (int32 self.view_current):view_yview)
    self.d = -1s
    if !(bool (instance_exists[]:int32 (var 779s))) goto 0x0000B4
0x0000A4:
    self.d = 779.side
0x0000B4:
    if !(!= self.room 179s) goto 0x00012C
0x0000C8:
    push 1570.y
    if (> -1s (+ (int32 self.view_current):view_yview 130s)) goto 0x00010C
0x0000F8:
    push (== self.d 0s)
    goto 0x000110
0x00010C:
    push 1s
0x000110:
    if !pop goto 0x00012C
0x000114:
    self.y = (- self.y 155s)
0x00012C:
    self.mychoice = 0s
    global.choice = -1s
    self.choiced = 0s
0x000150:
    exit
