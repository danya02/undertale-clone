0x000000:
    push -1s
    self.xx = (int32 self.view_current):view_xview
    push -1s
    self.yy = (int32 self.view_current):view_yview
    self.mode = 0s
    self.mychoicex = (+ self.xx 20s)
    self.mychoicey = (+ self.yy 223s)
    if (== self.room 5s) goto 0x0000A4
0x000090:
    push (== self.room 77s)
    goto 0x0000A8
0x0000A4:
    push 1s
0x0000A8:
    if !pop goto 0x0000DC
0x0000AC:
    self.mychoicex = (+ self.xx 154s)
    self.mychoicey = (+ self.yy 156s)
0x0000DC:
    if !(== self.room 134s) goto 0x000120
0x0000F0:
    self.mychoicex = (+ self.xx 154s)
    self.mychoicey = (+ self.yy 110s)
0x000120:
    self.spdr = (/ (distance_to_point[]:int32 self.mychoicey self.mychoicex) (double 17s))
    call (move_towards_point[]:int32 self.spdr self.mychoicey self.mychoicex)
    push -5s
    if !(== 16s:flag 1s) goto 0x00020C
0x00018C:
    self.mychoicex = (+ self.xx 154s)
    self.mychoicey = (+ self.yy 156s)
    self.spdr = (/ (distance_to_point[]:int32 self.mychoicey self.mychoicex) (double 8s))
    call (move_towards_point[]:int32 self.spdr self.mychoicey self.mychoicex)
0x00020C:
    exit
