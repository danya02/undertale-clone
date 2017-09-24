0x000000:
    self.currenthour = self.current_hour
    if (<= self.currenthour 6s) goto 0x000038
0x000024:
    push (>= self.currenthour 18s)
    goto 0x00003C
0x000038:
    push 1s
0x00003C:
    if !pop goto 0x000050
0x000040:
    self.image_index = 0s
    goto 0x00005C
0x000050:
    self.image_index = 1s
0x00005C:
    stog.alarm[0s] = 1800s
0x000070:
    exit
