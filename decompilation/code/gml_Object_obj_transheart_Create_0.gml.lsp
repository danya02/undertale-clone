0x000000:
    push -1s
    self.xx = (int32 self.view_current):view_xview
    push -1s
    self.yy = (int32 self.view_current):view_yview
    self.mode = 0s
    stog.alarm[0s] = 0s
    self.mychoicex = (+ self.xx 20s)
    self.mychoicey = (+ self.yy 223s)
    if (== self.room 5s) goto 0x0000B8
0x0000A4:
    push (== self.room 77s)
    goto 0x0000BC
0x0000B8:
    push 1s
0x0000BC:
    if !pop goto 0x0000F0
0x0000C0:
    self.mychoicex = (+ self.xx 154s)
    self.mychoicey = (+ self.yy 156s)
0x0000F0:
    if (== self.room 134s) goto 0x000140
0x000104:
    if (== self.room 135s) goto 0x000140
0x000118:
    if (== self.room 136s) goto 0x000140
0x00012C:
    push (== self.room 137s)
    goto 0x000144
0x000140:
    push 1s
0x000144:
    if !pop goto 0x000178
0x000148:
    self.mychoicex = (+ self.xx 156s)
    self.mychoicey = (+ self.yy 116s)
0x000178:
    self.spdr = (/ (distance_to_point[]:int32 self.mychoicey self.mychoicex) (double 17s))
    call (move_towards_point[]:int32 self.spdr self.mychoicey self.mychoicex)
    call (snd_play[]:int32 (var 105s))
    push -5s
    if !(== 16s:flag 1s) goto 0x0002AC
0x0001F8:
    self.x = self.xstart
    self.y = self.ystart
    self.mychoicex = (+ self.xx 154s)
    self.mychoicey = (+ self.yy 156s)
    self.spdr = (/ (distance_to_point[]:int32 self.mychoicey self.mychoicex) (double 8s))
    call (move_towards_point[]:int32 self.spdr self.mychoicey self.mychoicex)
    call (snd_play[]:int32 (var 105s))
0x0002AC:
    exit
